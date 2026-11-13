#!/usr/bin/env python3
"""Sync this tap with the latest version published by the Oiê release workflow."""

import hashlib
import json
from pathlib import Path
import re
import subprocess
import tarfile
from tempfile import TemporaryDirectory


REPO = "araihu/oie"
TAG = re.compile(r"v(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)(?:-([0-9A-Za-z-]+(?:\.[0-9A-Za-z-]+)*))?")
RECIPES = ("Casks/oie.rb", "Formula/oie.rb")


def key(tag):
    major, minor, patch, prerelease = TAG.fullmatch(tag).groups()
    suffix = [(0, int(item)) if item.isdigit() else (1, item)
              for item in prerelease.split(".")] if prerelease else []
    return int(major), int(minor), int(patch), prerelease is None, suffix


def command(*args, **kwargs):
    return subprocess.check_output(args, text=True, **kwargs)


def main():
    releases = json.loads(command("gh", "api", "--paginate", "--slurp", f"repos/{REPO}/releases?per_page=100"))
    tags = []
    for page in releases:
        for release in page:
            tag = release["tag_name"]
            asset = f"oie-{tag}-homebrew.tar.gz"
            if not release["draft"] and TAG.fullmatch(tag) and any(file["name"] == asset for file in release["assets"]):
                tags.append(tag)
    if not tags:
        print("No published Homebrew assets yet.")
        return

    version = max(tags, key=key)
    current = Path("OIE_VERSION")
    if current.exists() and key(current.read_text().strip()) >= key(version):
        return

    asset = f"oie-{version}-homebrew.tar.gz"
    with TemporaryDirectory() as temporary:
        folder = Path(temporary)
        command("gh", "release", "download", version, "--repo", REPO,
                "--pattern", asset, "--pattern", "SHA256SUMS", "--dir", temporary)
        checksums = (folder / "SHA256SUMS").read_text().splitlines()
        expected = [digest for digest, name in (line.split(maxsplit=1) for line in checksums) if name == asset]
        if expected != [hashlib.sha256((folder / asset).read_bytes()).hexdigest()]:
            raise SystemExit(f"Checksum mismatch for {asset}")
        with tarfile.open(folder / asset) as archive:
            for name in RECIPES:
                with archive.extractfile(name) as recipe:
                    content = recipe.read()
                path = Path(name)
                path.parent.mkdir(exist_ok=True)
                path.write_bytes(content)
    current.write_text(version + "\n")
    command("git", "config", "user.name", "github-actions[bot]")
    command("git", "config", "user.email", "41898282+github-actions[bot]@users.noreply.github.com")
    command("git", "add", *RECIPES, "OIE_VERSION")
    command("git", "commit", "-m", f"Update Oiê to {version}")
    command("git", "push")


if __name__ == "__main__":
    main()
