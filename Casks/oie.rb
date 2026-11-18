cask "oie" do
  version "0.0.1-rc.44"
  sha256 "967ad54b81054d865c461b66d11e4ac9ee27f6c0e71cb9499ad1e18dcfc59287"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
