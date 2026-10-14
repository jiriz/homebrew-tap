cask "zcommander" do
  version "26.002.116"
  sha256 "3f5cf58abbb0b9169aa60171da818c5450c93658debd143bc92be4fc5f429e5f"

  url "https://www.zasgroup.cz/files/zc/#{version}/zCommander.app.zip"
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
