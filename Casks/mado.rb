cask "mado" do
  version "0.4.0"
  sha256 "REPLACE_WITH_SHA256_OF_Mado.dmg"

  url "https://github.com/tomdringer/mado/releases/download/v#{version}/Mado.dmg"
  name "Mado"
  desc "A terminal multiplexer for macOS with plugins, themes, and Tasku built in"
  homepage "https://nerimasoft.co.uk/mado.html"

  depends_on macos: ">= :sonoma"

  app "Mado.app"

  zap trash: [
    "~/.config/mado",
  ]
end
