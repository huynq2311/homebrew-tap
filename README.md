# huynq2311/homebrew-tap

Homebrew casks for [SlipTray](https://github.com/huynq2311/SlipTray), an open-source clipboard manager for macOS.

## Install

```bash
brew install --cask huynq2311/tap/sliptray
```

## Update

```bash
brew update
brew upgrade --cask huynq2311/tap/sliptray
```

SlipTray is signed with a self-signed certificate and is not notarized. macOS blocks the first launch; if you trust the publisher, click **Open Anyway** in **System Settings → Privacy & Security**. Apple Silicon, macOS 15 or later.

## Maintenance

`.github/workflows/bump-slipboard.yml` checks the latest SlipTray release every six hours (or on demand from the Actions tab). When the release tag differs from the cask version it downloads `SlipTray.dmg`, checks it against the release's `SlipTray.dmg.sha256`, and opens a pull request that updates `version` and `sha256`. Review and merge it by hand.
