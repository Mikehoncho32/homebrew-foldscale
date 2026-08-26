cask "foldscale" do
  version "1.3.0"
  sha256 "debd6765c94c059f3ffa1caf69c351c5c35ababb7773c15ea565cc89b652e13b"

  url "https://github.com/Mikehoncho32/foldscale/releases/download/v#{version}/Foldscale-#{version}.dmg"
  name "Foldscale"
  desc "Finder-native disk space analyzer"
  homepage "https://github.com/Mikehoncho32/foldscale"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (Sparkle); brew upgrade defers unless --greedy.
  auto_updates true
  depends_on macos: :sonoma

  app "Foldscale.app"

  zap trash: [
    "~/Library/Application Support/Foldscale",
    # Left behind by the app's previous name (Radix, up to 1.1.0).
    "~/Library/Application Support/Radix",
    "~/Library/Caches/io.github.mikehoncho32.foldscale",
    "~/Library/Caches/io.github.mikehoncho32.radix",
    "~/Library/Preferences/io.github.mikehoncho32.foldscale.plist",
    "~/Library/Preferences/io.github.mikehoncho32.radix.plist",
    "~/Library/Saved Application State/io.github.mikehoncho32.foldscale.savedState",
    "~/Library/Saved Application State/io.github.mikehoncho32.radix.savedState",
  ]
end
