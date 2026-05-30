cask "fiti" do
  version "0.5.1"
  sha256 "8bf59bb3eec8883b670dd7630ff4bdc71ae87c339e9c1279f9868d321fd00dd9"

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
