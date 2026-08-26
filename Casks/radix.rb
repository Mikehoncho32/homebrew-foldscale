cask "radix" do
  version "1.1.0"
  sha256 "5d50ebc37cde2668fdf97cdfbe86925c3b10cc8850ae59bcf8d85a525fa536e9"

  url "https://github.com/Mikehoncho32/radix/releases/download/v#{version}/Radix-#{version}.dmg"
  name "Radix"
  desc "Finder-native disk space analyzer"
  homepage "https://github.com/Mikehoncho32/radix"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Radix.app"

  zap trash: [
    "~/Library/Application Support/Radix",
    "~/Library/Caches/io.github.mikehoncho32.radix",
    "~/Library/Preferences/io.github.mikehoncho32.radix.plist",
    "~/Library/Saved Application State/io.github.mikehoncho32.radix.savedState",
  ]
end
