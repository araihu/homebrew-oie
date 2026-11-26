cask "oie" do
  version "0.0.1-rc.58"
  sha256 "8a5db5db3e574d7d81f147415eb9bd5c1abed3343adae0b6b976a41c62cf7348"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
