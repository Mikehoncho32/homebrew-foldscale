# Homebrew tap for Foldscale

[Foldscale](https://github.com/Mikehoncho32/foldscale) — a Finder-native disk space analyzer for macOS.

```sh
brew install --cask mikehoncho32/foldscale/foldscale
```

Upgrades come with `brew upgrade`. Remove with `brew uninstall --cask foldscale`
(`brew uninstall --cask --zap foldscale` also clears the scan cache and preferences).

## Updating the cask (maintainers)

After publishing a GitHub release with `Foldscale-<version>.dmg`:

```sh
./update.sh <version>
```

That downloads the DMG, computes its SHA-256, rewrites `Casks/foldscale.rb`, and runs
`brew audit` + `brew style`. Commit and push the result.
