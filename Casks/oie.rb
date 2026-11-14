cask "oie" do
  version "0.0.1-rc.12"
  sha256 "20f1e41fc5937943fb2550bc5ef47685eeb25425006ad0a07803bd61a8355c21"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
