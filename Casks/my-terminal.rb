cask "my-terminal" do
  version "1.0.1"
  sha256 "cd0a6aea0db01581d9c8e2c795ff6862ab935cb2e28cb39ad655453d02bffe6a"

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
