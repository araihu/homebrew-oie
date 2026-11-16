cask "oie" do
  version "0.0.1-rc.33"
  sha256 "3e49dca1fa55467b3932ddb06b8c86b1fcc434ed0ed46709ad1c98289d570ed4"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
