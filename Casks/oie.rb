cask "oie" do
  version "0.0.1-rc.36"
  sha256 "c0c7020b0b56b3380bbae07470d7dd4a062b1c6bfa148022e76568a797696c4e"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
