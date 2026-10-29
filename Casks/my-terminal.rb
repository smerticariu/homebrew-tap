cask "my-terminal" do
  version "1.0.5"
  sha256 "44dbe32ff5a3abcbaf6a31710c4a651ed7c2e640a58dd525d645732a4576ae5b"

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
