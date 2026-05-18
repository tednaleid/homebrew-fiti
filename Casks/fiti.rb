cask "fiti" do
  version "0.2.0"
  sha256 "18186767d91f61ea7979dcac9265ad87e8ae655b05d09044db7528c6f96f3964"

  url "https://github.com/tednaleid/fiti/releases/download/#{version}/fiti-#{version}.dmg"
  name "fiti"
  desc "Native macOS transparent drawing overlay (telestrator-style)"
  homepage "https://github.com/tednaleid/fiti"

  depends_on macos: ">= :sonoma"

  app "Fiti.app"

  zap trash: [
    "~/Library/Preferences/com.fiti.app.plist",
    "~/Library/Caches/com.fiti.app",
  ]
end
