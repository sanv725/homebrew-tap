cask "tokensight" do
  version "1.3.1"
  sha256 "17f336c75a98e1ccaf96c7f80f826ef79526e22140e6c742d4abd15f7cd03f75"

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
