cask "tokensight" do
  version "1.4.1"
  sha256 "ca23f42fd66f42429c2fcb2a5f0fa8fe6e251b1250b66be546713f072468ff27"

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
