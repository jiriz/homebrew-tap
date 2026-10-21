cask "zcommander" do
  version "26.002.124"
  sha256 "07a3d51e3066ea493f80ebc8a667a85aee003e4f0b4e8a6e0462d2be77cd0f66"

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
