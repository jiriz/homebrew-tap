cask "zcommander" do
  version "26.002.051"
  sha256 "40702539612cdea2d510f61d1bb4bae6fee8246f57c6f46894e52ae34af7cd25"

  url "https://www.zasgroup.cz/files/zc/#{version}/zCommander.app.zip"
  name "zCommander"
  desc "Two-pane file manager for macOS with a built-in editor (Finder and Total Commander style)"
  homepage "https://www.zasgroup.cz/"

  livecheck do
    url "https://www.zasgroup.cz/files/zc/update.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :ventura"

  app "zCommander.app"

  zap trash: [
    "~/Library/Application Support/zCommander",
  ]
end
