cask "oie" do
  version "0.0.1-rc.29"
  sha256 "7f43d92f98423bb6bacece93f6332593a1e1e8b896a0af20c75f8c688ece52e0"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
