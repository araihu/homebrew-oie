cask "oie" do
  version "0.0.1-rc.53"
  sha256 "4b5fdef1605271af6229400e8a6d4715e37adc08aa811bca151f2d234a563102"

  url "https://github.com/araihu/oie/releases/download/v#{version}/oie_v#{version}_darwin_arm64.tar.gz"
  name "Oiê"
  desc "Desktop messenger for XMPP accounts"
  homepage "https://github.com/araihu/oie"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Oie.app"
end
