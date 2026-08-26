#!/usr/bin/env bash
# Bump Casks/foldscale.rb to a published release: ./update.sh 1.2.0
set -euo pipefail
version="${1:?usage: ./update.sh <version>}"
cask="$(cd "$(dirname "$0")" && pwd)/Casks/foldscale.rb"
tmp="$(mktemp -d)"
curl -fsSL -o "${tmp}/Foldscale.dmg" \
  "https://github.com/Mikehoncho32/foldscale/releases/download/v${version}/Foldscale-${version}.dmg"
sha="$(shasum -a 256 "${tmp}/Foldscale.dmg" | cut -d' ' -f1)"
sed -i "" -e "s/^  version \".*\"/  version \"${version}\"/" -e "s/^  sha256 \".*\"/  sha256 \"${sha}\"/" "${cask}"
rm -rf "${tmp}"
echo "foldscale.rb -> ${version} (${sha})"
brew audit --cask --strict "${cask}" && brew style "${cask}" && echo "OK — commit and push."
