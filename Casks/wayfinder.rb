cask "wayfinder" do
  version "1.4.2"
  sha256 "1c927e1aa0528548d9e9dfc611f195961f197c74cfd599ea22c9148a36715445"

  url "https://downloads.versaminds.live/wayfinder/Wayfinder-#{version}.dmg"
  name "Wayfinder"
  desc "SSH terminals, files, a host monitor and Kubernetes in one app"
  homepage "https://wayfinder.versaminds.live/"

  livecheck do
    url "https://wayfinder.versaminds.live/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Wayfinder.app"

  zap trash: [
    "~/Library/Application Support/Wayfinder",
    "~/Library/Caches/live.versaminds.Wayfinder",
    "~/Library/HTTPStorages/live.versaminds.Wayfinder",
    "~/Library/Logs/Wayfinder",
    "~/Library/Preferences/live.versaminds.Wayfinder.plist",
    "~/Library/Saved Application State/live.versaminds.Wayfinder.savedState",
  ]
end
