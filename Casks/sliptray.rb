cask "sliptray" do
  version "1.0-20261024"
  sha256 "d3263ce7ffaa851acfe9690c9d1a4262febd7fd7cfe6494cff9451baf46b1585"

  url "https://github.com/huynq2311/SlipTray/releases/download/v#{version}/SlipTray.dmg"
  name "SlipTray"
  desc "Open-source clipboard manager"
  homepage "https://github.com/huynq2311/SlipTray"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "SlipTray.app"

  zap trash: [
    "~/Library/Application Support/SlipTray",
    "~/Library/Preferences/huynq.SlipTray.plist",
  ]

  caveats <<~EOS
    SlipTray is signed with a self-signed certificate and is not notarized,
    so macOS blocks the first launch. If you trust the publisher, click
    Open Anyway in System Settings > Privacy & Security.

    Pasting into other apps needs Accessibility permission.
  EOS
end
