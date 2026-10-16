cask "slipboard" do
  version "1.0-20261016.4"
  sha256 "f2553377b0c8a506d16e4b181f3cdc7fff45bba8a28f8e7d24c9bea4258e4d00"

  url "https://github.com/huynq2311/SlipBoard/releases/download/v#{version}/SlipBoard.dmg"
  name "SlipBoard"
  desc "Open-source clipboard manager"
  homepage "https://github.com/huynq2311/SlipBoard"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "SlipBoard.app"

  zap trash: [
    "~/Library/Application Support/SlipBoard",
    "~/Library/Preferences/huynq.SlipBoard.plist",
  ]

  caveats <<~EOS
    SlipBoard is signed with a self-signed certificate and is not notarized,
    so macOS blocks the first launch. If you trust the publisher, click
    Open Anyway in System Settings > Privacy & Security.

    Pasting into other apps needs Accessibility permission.
  EOS
end
