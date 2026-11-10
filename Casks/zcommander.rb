cask "zcommander" do
  version "26.002.160"
  sha256 "aa31ba4f661a500db1c6aad5c10fa112887e3b15dc704c3c89a2e637a338ed83"

  url "https://duopane.app/download.php?f=zip&v=#{version}"
  name "DuoPane"
  desc "Two-pane file manager for macOS with a built-in editor (Finder and Total Commander style)"
  homepage "https://duopane.app/"

  deprecate! date: "2026-10-14", because: "it was renamed to DuoPane", replacement_cask: "duopane"

  livecheck do
    url "https://duopane.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :ventura

  app "DuoPane.app"

  zap trash: [
    "~/Library/Application Support/zCommander",
  ]
end
