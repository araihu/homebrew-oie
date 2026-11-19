cask "oie" do
  version "0.0.1-rc.45"
  sha256 "a0d91c4d572cc502fe17654f02e5e4906762f5ee659df8373bbac8f9f367e8ae"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
