cask "zcommander" do
  version "26.002.137"
  sha256 "29c6f29bc3edba84efe165bd20bd4282be450bb45133c72ff9b25130934d5cb2"

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
