#!/usr/bin/env bash
# Bump Casks/radix.rb to a published release: ./update.sh 1.2.0
set -euo pipefail
version="${1:?usage: ./update.sh <version>}"
cask="$(cd "$(dirname "$0")" && pwd)/Casks/radix.rb"
tmp="$(mktemp -d)"
curl -fsSL -o "$tmp/Radix.dmg" \
  "https://github.com/Mikehoncho32/radix/releases/download/v$version/Radix-$version.dmg"
sha="$(shasum -a 256 "$tmp/Radix.dmg" | cut -d' ' -f1)"
sed -i '' -e "s/^  version \".*\"/  version \"$version\"/" -e "s/^  sha256 \".*\"/  sha256 \"$sha\"/" "$cask"
rm -rf "$tmp"
echo "radix.rb -> $version ($sha)"
brew audit --cask --strict "$cask" && brew style "$cask" && echo "OK — commit and push."
