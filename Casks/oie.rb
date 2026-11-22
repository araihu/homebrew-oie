cask "oie" do
  version "0.0.1-rc.49"
  sha256 "e6b1def1deea5a014af3686d9a6f3dce099528aa13fdaee467a367dfbe2949e5"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
