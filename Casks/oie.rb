cask "oie" do
  version "0.0.1-rc.56"
  sha256 "ad980542fc34be64420ce8937d802bba45e2e82cfacd8da8052fd5a0c6e682be"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
