cask "zcommander" do
  version "26.002.136"
  sha256 "3d16ba1c992a8519b76d4fe351293f7dee578ea167354803ef8e8cc257154ba3"

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
