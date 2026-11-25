cask "oie" do
  version "0.0.1-rc.55"
  sha256 "7e0afe5f10d34a3c710098ea8736cc1ed5acb8929fb6a01fe7937bcb92b20543"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
