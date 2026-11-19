cask "oie" do
  version "0.0.1-rc.47"
  sha256 "78f685f827570b7db8c73e05a2eb6293133c1c1730031113139158851c035aba"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
