cask "oie" do
  version "0.0.1-rc.37"
  sha256 "77444274814e900b5e7715c653bac7bcdfb8f653827c3b3ed3b919eeb9767a8b"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
