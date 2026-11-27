cask "oie" do
  version "0.0.1-rc.60"
  sha256 "e2f4fa322c3f430812c3c7ddcfc7ffedaffcb56f5361626e1bccf9b0907c835b"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
