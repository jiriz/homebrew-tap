cask "duopane" do
  version "26.002.168"
  sha256 "1cd1e314c2ba5ccbd34954449c37ebaa387ac543ff2cbd60804d8b027735c8b3"

  url "https://duopane.app/download.php?f=zip&v=#{version}"
  name "DuoPane"
  desc "Two-pane file manager for macOS with a built-in editor (Finder and Total Commander style)"
  homepage "https://duopane.app/"

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
