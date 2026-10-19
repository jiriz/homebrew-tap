cask "duopane" do
  version "26.002.120"
  sha256 "a9b40397e220b7fc93014ae0fbe85e7b5123486fb65741e7d09c89cd7afa4bed"

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
