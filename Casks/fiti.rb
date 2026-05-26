cask "fiti" do
  version "0.5.0"
  sha256 "616c97391d4b05af8b8ec6b9e5137ea9e652b6916ddf0aaae9f3eb27e2cd064f"

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
