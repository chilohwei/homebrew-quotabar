cask "quotabar" do
  version "1.1.3"
  sha256 "d7a93ea927ec7f833349a428f971e046a28c1e52786f5bfe3b34adfa9a171a64"

  url "https://github.com/chilohwei/QuotaBar/releases/download/v#{version}/QuotaBar-#{version}-universal.dmg",
      verified: "github.com/chilohwei/QuotaBar/"
  name "QuotaBar"
  desc "Menu bar tool for viewing Codex quota and switching local accounts"
  homepage "https://github.com/chilohwei/QuotaBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "QuotaBar.app"

  zap trash: [
    "~/Library/Application Support/QuotaBar",
    "~/Library/Preferences/com.chiloh.QuotaBar.plist",
  ]
end
