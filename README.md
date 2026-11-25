# Lepik for macOS

Lepik is an agent-operated CAD workspace for making printable parts.
These preview builds require an Apple Silicon Mac.

## Install with Homebrew

```sh
brew install --cask wixaxis/tap/lepik
```

Open Lepik from Applications or run `lepik --help` in your terminal.
To update, run `brew upgrade --cask wixaxis/tap/lepik`.

## Direct download

Download the `-arm64-direct.zip` asset from [Releases](https://github.com/Wixaxis/homebrew-tap/releases).
Unzip it, move Lepik to Applications, and use **Check for Updates** inside
Lepik for future releases.

The preview builds are ad-hoc signed. macOS may ask you to open this app
explicitly from Privacy & Security on first launch.

Each release includes the OCCT source and materials for relinking the
bundled geometry helper. The app includes third-party notices.
