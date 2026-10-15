cask "duopane" do
  version "26.002.119"
  sha256 "de15b7871976b7273840f2063d3630b44fda899375ad66361728ee22ebe15cf4"

  url "https://www.zasgroup.cz/files/zc/#{version}/zCommander.app.zip"
  name "DuoPane"
  desc "Two-pane file manager for macOS with a built-in editor (Finder and Total Commander style)"
  homepage "https://duopane.app/"

  livecheck do
    url "https://www.zasgroup.cz/files/zc/update.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :ventura"

  app "DuoPane.app"

  zap trash: [
    "~/Library/Application Support/zCommander",
  ]
end
