cask "oie" do
  version "0.0.1-rc.13"
  sha256 "82f47e25d6379373c0cfac664d7480427da3a5162b132396ddc60d61950555d8"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
