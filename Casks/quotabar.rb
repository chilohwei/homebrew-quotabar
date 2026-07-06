cask "quotabar" do
  version "1.1.0"
  sha256 "74200d46d3044d265a1d4946edd50e71f0f4403928e64a7fd044642fe1316609"

  url "https://github.com/chilohwei/QuotaBar/releases/download/v#{version}/QuotaBar-#{version}-universal.dmg"
  name "QuotaBar"
  desc "Menu bar tool for viewing AI tool quotas and switching local accounts"
  homepage "https://github.com/chilohwei/QuotaBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "QuotaBar.app"

  zap trash: [
    "~/Library/Application Support/QuotaBar",
    "~/Library/Preferences/com.chiloh.QuotaBar.plist",
  ]
end
