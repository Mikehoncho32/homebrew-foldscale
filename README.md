# Homebrew tap for Radix

> The token is `radix-finder` (not `radix`): the official Homebrew index already has an
> unrelated cask named `radix`, and sharing the token would make `brew upgrade` swap apps.

[Radix](https://github.com/Mikehoncho32/radix) — a Finder-native disk space analyzer for macOS.

```sh
brew install --cask mikehoncho32/radix/radix-finder
```

Upgrades come with `brew upgrade`. Remove with `brew uninstall --cask radix-finder`
(`brew uninstall --cask --zap radix-finder` also clears the scan cache and preferences).

## Updating the cask (maintainers)

After publishing a GitHub release with `Radix-<version>.dmg`:

```sh
./update.sh <version>
```

That downloads the DMG, computes its SHA-256, rewrites `Casks/radix-finder.rb`, and runs
`brew audit` + `brew style`. Commit and push the result.
