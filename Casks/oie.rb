cask "oie" do
  version "0.0.1-rc.30"
  sha256 "631c8f4c14d15bea3947069bf5dbd35a9e896ab1b54c93ea8991b72ef0dd0c5f"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
