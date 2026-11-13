cask "oie" do
  version "0.0.1-rc.9"
  sha256 "5d7ef29cd0e6f11a8223d176e1286ace46e186b98b4b770ef0942e5ff8fdb3df"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
