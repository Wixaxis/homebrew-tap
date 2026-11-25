cask "lepik" do
  version "0.1.0"
  sha256 "243c950ae8048ecb0a455d627c4a3829f8a0e961a69f09e6e2b8103407910001"

  url "https://github.com/Wixaxis/homebrew-tap/releases/download/v#{version}/Lepik-#{version}-arm64.zip"
  name "Lepik"
  desc "Agent-native CAD for precise, printable parts"
  homepage "https://github.com/Wixaxis/homebrew-tap"

  depends_on arch: :arm64

  app "Lepik.app"
  binary "#{appdir}/Lepik.app/Contents/MacOS/lepik"

  # Homebrew replaces the app on upgrade. Project, config, and cache files
  # under the XDG directories are not removed.
  caveats <<~EOS
    Projects, settings, and cache remain in ~/.local/share/lepik, ~/.config/lepik, and ~/.cache/lepik. This cask does not remove them.
    Upgrade this build with Homebrew. It does not update itself.
  EOS
end
