cask "duopane" do
  version "26.002.134"
  sha256 "bdc17bde8b7887e0715f37089703a75324cdb832c63e0ce81c8bd4ef443f3d47"

  url "https://www.zasgroup.cz/files/zc/#{version}/DuoPane.app.zip"
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
