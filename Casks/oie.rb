cask "oie" do
  version "0.0.1-rc.38"
  sha256 "6b9923c2dc0c78b48d3f6c3098e2aa41fee458950b95d7f5b630d676c91c77e4"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
