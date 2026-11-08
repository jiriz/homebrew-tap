cask "duopane" do
  version "26.002.153"
  sha256 "8a5482b949093905a32c012839176b673a2899bfedf40dfa6a1d9d7727f64292"

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
