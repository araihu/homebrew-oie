cask "oie" do
  version "0.0.1-rc.32"
  sha256 "1167052e73772cf4e4549b142742e7601c904f268efb530889c7a9fb24edc4ae"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
