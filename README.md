# Oiê Homebrew tap

Install the [Oiê desktop messenger](https://github.com/araihu/oie) after its
release workflow publishes the recipes and this tap syncs them.

```sh
# macOS on Apple Silicon
brew install --cask araihu/oie/oie

# Linux x86_64
brew install --formula araihu/oie/oie
```

On Linux, install GTK 4, WebKitGTK 6 and libsoup 3 from your distro first.
See the [installation guide](https://github.com/araihu/oie/blob/main/docs/installation.md)
for system dependencies and macOS first open.

The sync workflow checks [published Oiê releases](https://github.com/araihu/oie/releases)
hourly and verifies the recipe archive against the release's `SHA256SUMS`.
