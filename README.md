# Homebrew tap for Radix

[Radix](https://github.com/Mikehoncho32/radix) — a Finder-native disk space analyzer for macOS.

```sh
brew install --cask mikehoncho32/radix/radix
```

Upgrades come with `brew upgrade`. Remove with `brew uninstall --cask radix`
(`brew uninstall --cask --zap radix` also clears the scan cache and preferences).

## Updating the cask (maintainers)

After publishing a GitHub release with `Radix-<version>.dmg`:

```sh
./update.sh <version>
```

That downloads the DMG, computes its SHA-256, rewrites `Casks/radix.rb`, and runs
`brew audit` + `brew style`. Commit and push the result.
