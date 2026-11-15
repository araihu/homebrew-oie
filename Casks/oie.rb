cask "oie" do
  version "0.0.1-rc.16"
  sha256 "95913d2376786e7aee498d510c6110682a16ef8db3d6dc3a438326b5ed783732"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
