cask "oie" do
  version "0.0.1-rc.46"
  sha256 "a3c69e7bf2a56c0646d65c3d5b0b15648fe5db6d3cf362f56599740695bd87a6"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
