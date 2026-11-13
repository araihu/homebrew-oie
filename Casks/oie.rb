cask "oie" do
  version "0.0.1-rc.4"
  sha256 "4fd8ca62608dae3de9c32af197d9ed8f4d4fe514b9687f988ce8f163aa5edaff"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
