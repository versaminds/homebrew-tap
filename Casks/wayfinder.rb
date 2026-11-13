cask "wayfinder" do
  version "1.2.0"
  sha256 "332a17127a49656d7fc09e970f27c4da810d3f4f5b3e77cf7e2ffbe375593c5e"

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
