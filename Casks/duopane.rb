cask "duopane" do
  version "26.002.164"
  sha256 "69924228a9542c534817ffe9651600b4becdfac0a74f1df9e72651eeaaa97599"

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
