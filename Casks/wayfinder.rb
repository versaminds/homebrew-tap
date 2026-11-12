cask "wayfinder" do
  version "1.0.6"
  sha256 "04af6c47db7d789cae39d4e1ea634437f0d013d1c9426c3d95ce9e0328481106"

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
