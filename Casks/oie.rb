cask "oie" do
  version "0.0.1-rc.24"
  sha256 "b16f9b50fa0a62a482c9de2802510cf9c1729d3ec15feee0357157f5cbc1efcc"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
