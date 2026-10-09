cask "zcommander" do
  version "26.002.054"
  sha256 "3a9ae5e9df888dfab072e1a9efa51e5a34b73f0342ffe9cf35b4216bca2b6252"

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
