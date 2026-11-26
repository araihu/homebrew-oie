cask "oie" do
  version "0.0.1-rc.59"
  sha256 "3a7c38f2c0127d7374b3d4c812e18b84df7288387e78a93ced7aa9eabf0f5e56"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
