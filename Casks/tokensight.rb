cask "tokensight" do
  version "1.6.0"
  sha256 "de9f18002698e37427703342f37bc27f8bb7f90dbc20caef7362e8a2e242ed2d"

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
