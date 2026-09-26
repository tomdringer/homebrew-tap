cask "mado" do
  version "0.0.3"
  sha256 "21fe3f9f6715c8817972d947f303aefabcd5002a42d152045fe08718abe1a34b"

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
