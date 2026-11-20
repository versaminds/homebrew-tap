cask "forester" do
  version "1.1.1"
  sha256 "3cc97aa9886ba45e8f6ef665fdb780976591588fdf76991957b07c42763fccf9"

  url "https://github.com/versaminds/forester/releases/download/v#{version}/Forester.dmg"
  name "Forester"
  desc "LDAP and Active Directory browser"
  homepage "https://forester.versaminds.live/"

  livecheck do
    url "https://forester.versaminds.live/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Forester.app"

  zap trash: [
    "~/Library/Application Support/Forester",
    "~/Library/Caches/live.versaminds.Forester",
    "~/Library/HTTPStorages/live.versaminds.Forester",
    "~/Library/Preferences/live.versaminds.Forester.plist",
    "~/Library/Saved Application State/live.versaminds.Forester.savedState",
  ]
end
