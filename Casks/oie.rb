cask "oie" do
  version "0.0.1-rc.10"
  sha256 "dffff81cd389a2efd0229010a841da9fe2ed9073e0586ecdaef9b42c4b39f862"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
