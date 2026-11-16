cask "oie" do
  version "0.0.1-rc.35"
  sha256 "0d224b13b0b95713c89c2a0eba71013caef7e5cc8f8e928f722141579e7b58bc"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
