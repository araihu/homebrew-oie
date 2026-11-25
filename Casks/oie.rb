cask "oie" do
  version "0.0.1-rc.54"
  sha256 "dc3ba2d1e6e36a9119167cd3b23588f6297ef837145835dd4456b8fff988ed19"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
