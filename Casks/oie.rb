cask "oie" do
  version "0.0.1-rc.50"
  sha256 "7139eb05e7a2fff73ff870a69bd059ba4e69cf609b971a2d8b274fda945c0f68"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
