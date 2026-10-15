cask "duopane" do
  version "26.002.117"
  sha256 "667fc1d75b6c24dc6c99c6016b2dc665f42e2cce61713e33e90de80f97d1c981"

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
