cask "oie" do
  version "0.0.1-rc.28"
  sha256 "c14bb2e9040499a97a0e1af1b6ccaa0889c0ba45ef48ff4ed9a8a4e78432e361"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
