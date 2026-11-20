cask "forester" do
  version "1.1.0"
  sha256 "b66c9582d060244a9f69506b703114b8e0168152eecf2129e6c8ae8315ea1eb7"

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
