cask "oie" do
  version "0.0.1-rc.6"
  sha256 "fd9496ad6d94fef356a4dc49e1788627e9d76872fce81a5e386449ee7b0db5fe"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
