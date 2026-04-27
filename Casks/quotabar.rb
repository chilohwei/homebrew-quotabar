cask "quotabar" do
  version "1.1.1"
  sha256 "5198631b0356aec25c66059d3776825222c13d15621f779005841ed2f1b68eb6"

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
