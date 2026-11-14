cask "oie" do
  version "0.0.1-rc.11"
  sha256 "c0637515aebd57aaf502e73568c23580dda27dbc4b211d53871c6407a012a8cf"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
