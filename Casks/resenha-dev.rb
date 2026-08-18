# Template for the Homebrew cask published to aldeia-group/homebrew-tap.
# The release workflow replaces 0.2.0 and 2c2d9d5b51426f7fee9f13eaca1500e71643e7d7c1b43af3c5a868e57f5f6a43 and pushes the
# rendered file to Casks/resenha-dev.rb in the tap on every stable release.
cask "resenha-dev" do
  version "0.2.0"
  sha256 "2c2d9d5b51426f7fee9f13eaca1500e71643e7d7c1b43af3c5a868e57f5f6a43"

  url "https://github.com/aldeia-group/resenha-dev/releases/download/v#{version}/ResenhaDev.dmg"
  name "Resenha Dev"
  desc "Remote-pairing rooms with screen, camera, and microphone sharing"
  homepage "https://resenha.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Resenha Dev.app"

  zap trash: [
    "~/Library/Application Support/Resenha Dev",
    "~/Library/Caches/app.resenha.app",
    "~/Library/Containers/app.resenha.app",
    "~/Library/HTTPStorages/app.resenha.app",
    "~/Library/Preferences/app.resenha.app.plist",
    "~/Library/Saved Application State/app.resenha.app.savedState",
  ]
end
