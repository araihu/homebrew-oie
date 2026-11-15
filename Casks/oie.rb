cask "oie" do
  version "0.0.1-rc.18"
  sha256 "2618c807b6080917e28b538ce697eb85441cbb9ec0d6dd415ec26d979470f5f5"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
