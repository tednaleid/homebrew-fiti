cask "fiti" do
  version "0.3.1"
  sha256 "c7f61de6bab1ef28342af8a7a5b5e062a22f73878c2d56a577cbd2070c082008"

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
