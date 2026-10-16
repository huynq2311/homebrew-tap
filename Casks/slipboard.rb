cask "slipboard" do
  version "1.0-20261016.2"
  sha256 "a52320eb76af332d8f164d7c2620901fc7c2bb2c4fef956388cf66c633e5a9d2"

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
