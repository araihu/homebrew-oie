cask "oie" do
  version "0.0.1-rc.22"
  sha256 "55cfe13bb702c47e3e4ecc3c1e8caef268dac36dc3b9e901d807fc43acf53883"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
