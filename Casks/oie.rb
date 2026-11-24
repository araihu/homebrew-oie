cask "oie" do
  version "0.0.1-rc.51"
  sha256 "009bd73eaa782407640bc20a1cf27a52fdb13094793f3368a341b8c4b12b4b78"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
