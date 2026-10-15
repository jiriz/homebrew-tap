cask "zcommander" do
  version "26.002.118"
  sha256 "798a09d6c5971eee868b0f6599cb7f0771fa5be95b7c3ad1ac794f640bd2b745"

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
