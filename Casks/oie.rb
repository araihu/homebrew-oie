cask "oie" do
  version "0.0.1-rc.8"
  sha256 "85734860d39a792bdd1b20303d315fc722254ad5ee0785f3272128066c9c4257"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
