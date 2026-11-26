cask "oie" do
  version "0.0.1-rc.57"
  sha256 "c7a5348a18ca2e447142d84e6d921fec62d769760ae1c7eba4aa326478be8ab9"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
