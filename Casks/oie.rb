cask "oie" do
  version "0.0.1-rc.14"
  sha256 "6d989092dcd5d8cc7d769da2f0495f2444dd3a63e4a15ce2519e9a790d450737"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
