cask "duopane" do
  version "26.002.158"
  sha256 "99b71f7f5a904fabcc00624250f1883b4f8e2fece76a45be1b19c8305ac6e1c6"

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
