cask "oie" do
  version "0.0.1-rc.48"
  sha256 "ab0e9a8637c26a177fbb9f508fb0a5f26580f1582ee03aa477d0f248fc965699"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
