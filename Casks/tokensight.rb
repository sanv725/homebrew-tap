cask "tokensight" do
  version "1.4.2"
  sha256 "c0760db2aefdcb5bbf63f550db636fd29e590ef66c7dd4cf1b7873de89ff8eb0"

  url "https://tokensight.app/download/TokenSight-#{version}.dmg"
  name "TokenSight"
  desc "Token usage analytics for OpenAI Codex and Claude Code"
  homepage "https://tokensight.app/"

  livecheck do
    url "https://tokensight.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "TokenSight.app"

  zap trash: [
    "~/Library/Application Support/TokenSight",
    "~/Library/Caches/com.tokensight.app",
    "~/Library/HTTPStorages/com.tokensight.app",
    "~/Library/Preferences/com.tokensight.app.plist",
  ]
end
