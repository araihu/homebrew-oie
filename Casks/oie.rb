cask "oie" do
  version "0.0.1-rc.34"
  sha256 "be128caa6954d2c0bd234467f2a8ee00bbc57bda1393000c08a7f6dae7d543bd"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
