cask "lepik" do
  version "0.2.0"
  sha256 "ce9686bf6bd98acaa86c861e0746299aabca3c6d2f52d4f796e893184757e001"

  url "https://github.com/Wixaxis/homebrew-tap/releases/download/v#{version}/Lepik-#{version}-arm64.zip"
  name "Lepik"
  desc "Agent-native CAD for precise, printable parts"
  homepage "https://github.com/Wixaxis/homebrew-tap"

  livecheck do
    url "https://raw.githubusercontent.com/Wixaxis/homebrew-tap/main/appcast.xml"
    strategy :sparkle do |item|
      item.short_version
    end
  end

  auto_updates true
  depends_on arch: :arm64

  app "Lepik.app"
  binary "#{appdir}/Lepik.app/Contents/MacOS/lepik"

  # Sparkle replaces the app. XDG project, config, and cache files stay.
  caveats <<~EOS
    Projects, settings, and cache remain in ~/.local/share/lepik, ~/.config/lepik, and ~/.cache/lepik. This cask does not remove them.
    Homebrew and a direct download install this same archive. The app checks for updates itself.
  EOS
end
