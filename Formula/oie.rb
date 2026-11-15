require "open3"

class Oie < Formula
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"
  url "https://github.com/araihu/oie/releases/download/v0.0.1-rc.20/oie_v0.0.1-rc.20_linux_amd64.tar.gz"
  version "0.0.1-rc.20"
  sha256 "2b40eaf2fde757e3a5539d7db1bd6d6d26a20e4a6fcd0ad9f024041de0e9051b"
  license "GPL-3.0-only"

  depends_on arch: :x86_64
  depends_on :linux

  def install
    linkage, status = Open3.capture2e("ldd", "-r", "bin/oie-desktop")
    unless status.success? && !linkage.match?(/not found|undefined symbol/)
      odie <<~EOS
        Oiê requires compatible GTK 4, WebKitGTK 6 and libsoup 3 libraries
        from your Linux distribution.

        #{linkage}
      EOS
    end

    bin.install "bin/oie-desktop"
    inreplace "share/applications/org.araihu.oie.desktop",
              "@OIE_EXEC@", %("#{HOMEBREW_PREFIX}/bin/oie-desktop")
    share.install "share/applications", "share/icons", "share/doc"
    (share/"doc/oie").find { |path| path.chmod(0644) if path.file? }
    (share/"icons/hicolor/512x512/apps/org.araihu.oie.png").chmod(0644)
  end

  test do
    assert_match "data-dir", shell_output("#{bin}/oie-desktop --help 2>&1")
  end
end
