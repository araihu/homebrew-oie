cask "oie" do
  version "0.0.1-rc.39"
  sha256 "b3d6f05a5410bde697a18e8aa378bb215819215c4faf1d8f6d58d3e5b78e6363"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
