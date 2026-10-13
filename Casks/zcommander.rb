cask "zcommander" do
  version "26.002.112"
  sha256 "21de67d098d6fcce4c1b5b4bc253e1c5209d035f50e00451964360aeda2a6dad"

  url "https://www.zasgroup.cz/files/zc/#{version}/zCommander.app.zip"
  name "zCommander"
  desc "Two-pane file manager for macOS with a built-in editor (Finder and Total Commander style)"
  homepage "https://www.zasgroup.cz/"

  livecheck do
    url "https://www.zasgroup.cz/files/zc/update.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :ventura"

  app "zCommander.app"

  zap trash: [
    "~/Library/Application Support/zCommander",
  ]
end
