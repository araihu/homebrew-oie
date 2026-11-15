cask "oie" do
  version "0.0.1-rc.20"
  sha256 "bb96ee6d1e469d40295218b033b307d12aad877710a029d873f5e66c39740756"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
