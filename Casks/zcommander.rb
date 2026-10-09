cask "zcommander" do
  version "26.002.053"
  sha256 "a69901b4ecb8c4aff0d5b08e5f8cad417f08b5c89f91a42cb0d9e0103cb246db"

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
