cask "oie" do
  version "0.0.1-rc.40"
  sha256 "bfe1a0cf0c44f7a1908616ba229d9462a76c9444b2ad190c3bd38beeabfdbe6c"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
