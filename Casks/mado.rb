cask "mado" do
  version "0.0.4"
  sha256 "c1bcc0addaffd486e926ca6b61054912494b096a07a2511d09d669b048909151"

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
