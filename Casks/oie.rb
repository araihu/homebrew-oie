cask "oie" do
  version "0.0.1-rc.31"
  sha256 "e072f7d5600206e99c7dd845f8d16adabd3cd300bd9ce268e851a55d94ac236a"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
