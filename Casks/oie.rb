cask "oie" do
  version "0.0.1-rc.21"
  sha256 "5b7f5e3880cefc244f92ca241b328df21d518c74b2b2ef15d8fcd5b52bca9b22"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
