cask "my-terminal" do
  version "1.0"
  sha256 "fd903d1713793fdefe36460b9059fd88836fe0b89360293df8a0aa5e2552bf1a"

  url "https://github.com/smerticariu/smerticariu.github.io/releases/download/my-terminal-v#{version}/MyTerminal-#{version}.dmg",
      verified: "github.com/smerticariu/smerticariu.github.io/"
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
