cask "oie" do
  version "0.0.1-rc.52"
  sha256 "cce8c64086d4b4dc5ad7300de84d0f0b251510e14cd9a6762a3ba4fe309bdb34"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
