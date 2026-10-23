cask "zcommander" do
  version "26.002.129"
  sha256 "4ec7b0a4556760f146140c9f76e9ba6c0a380cdb6bdd32ed713a34cf3881ed9e"

  url "https://www.zasgroup.cz/files/zc/#{version}/DuoPane.app.zip"
  name "DuoPane"
  desc "Two-pane file manager for macOS with a built-in editor (Finder and Total Commander style)"
  homepage "https://duopane.app/"

  deprecate! date: "2026-10-14", because: "it was renamed to DuoPane", replacement_cask: "duopane"

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
