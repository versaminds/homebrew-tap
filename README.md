# VersaMinds' Homebrew tap

Homebrew installs casks from a tap only once you trust it:

```sh
brew trust versaminds/tap
```

Then:

```sh
brew install --cask versaminds/tap/wayfinder
brew install --cask versaminds/tap/forester
```

[Wayfinder](https://wayfinder.versaminds.live/): SSH terminals, files, a host
monitor and Kubernetes in one app, by VersaMinds. Free to try for 7 days.

[Forester](https://forester.versaminds.live/): the LDAP and Active Directory
browser for Mac, by VersaMinds. Free to use.

Both update themselves; `brew upgrade --greedy` updates them through Homebrew.
