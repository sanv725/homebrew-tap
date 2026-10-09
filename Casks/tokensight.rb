cask "tokensight" do
  version "1.4.0"
  sha256 "e57b0b1bcbf5c68d801f4ca2e13b589855c872035fd0aea2900875b30c75754c"

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
