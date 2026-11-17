cask "oie" do
  version "0.0.1-rc.42"
  sha256 "7d3257aa7b84845ed6e359f0eceeaf22c6acd77302a24c5d223220234ab81b6e"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
