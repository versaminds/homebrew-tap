cask "wayfinder" do
  version "1.3.2"
  sha256 "7cc86ae92a86d2231b7bed0bbf4f1fd11c70ece64b05a6a1342c5b1067bd8258"

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
