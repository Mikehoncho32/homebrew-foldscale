cask "radix-finder" do
  version "1.1.0"
  sha256 "5d50ebc37cde2668fdf97cdfbe86925c3b10cc8850ae59bcf8d85a525fa536e9"

  url "https://github.com/Mikehoncho32/foldscale/releases/download/v#{version}/Radix-#{version}.dmg"
  name "Radix"
  desc "Finder-native disk space analyzer (renamed to Foldscale)"
  homepage "https://github.com/Mikehoncho32/foldscale"

  deprecate! date: "2026-08-26", because: :discontinued, replacement_cask: "mikehoncho32/foldscale/foldscale"

  depends_on macos: :sonoma

  app "Radix.app"
end
