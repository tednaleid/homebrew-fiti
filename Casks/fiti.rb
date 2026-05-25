cask "fiti" do
  version "0.4.0"
  sha256 "42935fc4b2d775d4aaec3fdeb2d3923475aea5566f17d412e3d05b2e3f5d89ee"

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
