cask "mado" do
  version "0.0.1"
  sha256 "b3530cec24b7f8cc4e758ae21252885d151850e6e6d2003fd364b03de42b0b2d"

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
