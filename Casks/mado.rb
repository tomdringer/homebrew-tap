cask "mado" do
  version "0.0.3"
  sha256 "a6970a0bbd389540a67ea1d5f73529cd85548965b8f2be1f29b609d9fadac208"

  url "https://github.com/tomdringer/mado/releases/download/v#{version}/Mado.dmg"
  name "Mado"
  desc "A terminal multiplexer for macOS with plugins, themes, and Tasku built in"
  homepage "https://nerimasoft.co.uk/mado.html"

  depends_on macos: :sonoma

  app "Mado.app"
  binary "#{appdir}/Mado.app/Contents/MacOS/mado"

  zap trash: [
    "~/.config/mado",
  ]
end
