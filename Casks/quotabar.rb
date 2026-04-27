cask "quotabar" do
  version "1.1.2"
  sha256 "95183723c25a9a43f3eac1d8423247b6a82762c2739750aa5348b6291cee5901"

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
