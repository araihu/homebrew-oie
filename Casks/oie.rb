cask "oie" do
  version "0.0.1-rc.43"
  sha256 "55be9aa19234983b77a27f331b811092c7c10dfaef8ca69012986c0a3b6dc647"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
