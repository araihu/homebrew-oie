cask "oie" do
  version "0.0.1-rc.41"
  sha256 "9ada872357d79c43fed3bb68cac8e3a7cd93d99f0d20b38a669392192a706d3a"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
