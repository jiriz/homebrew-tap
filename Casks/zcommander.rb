cask "zcommander" do
  version "26.002.062"
  sha256 "143b187fb8693f25ad021f0f28dac5699659c46bf965d0240b562e00277aea58"

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
