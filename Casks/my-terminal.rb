cask "my-terminal" do
  version "1.0.4"
  sha256 "75b2e9b3782f329de4bfb32678061e114f237cafa720f175567ea5307e876011"

  url "https://github.com/smerticariu/smerticariu.github.io/releases/download/my-terminal-v#{version}/MyTerminal-#{version}.dmg"
  name "My Terminal"
  desc "Terminal with command blocks that keeps everything on the computer"
  homepage "https://smerticariu.github.io/my-terminal/"

  livecheck do
    url :url
    regex(/^my-terminal-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "My Terminal.app"

  zap trash: [
    "~/Library/Application Support/My Terminal",
    "~/Library/Caches/My Terminal",
    "~/Library/Preferences/dev.smerticariu.myterminal.plist",
    "~/Library/Saved Application State/dev.smerticariu.myterminal.savedState",
  ]
end
