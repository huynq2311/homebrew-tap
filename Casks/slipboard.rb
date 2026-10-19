cask "slipboard" do
  version "1.0-20261019.1"
  sha256 "2c3b48a445c990d2a06ea1672a549a75f5e66e92ec1e0c47d14108a6b163e20b"

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
