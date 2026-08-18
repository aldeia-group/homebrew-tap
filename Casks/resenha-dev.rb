# Template for the unsigned internal cask published to aldeia-group/homebrew-tap.
# The release workflow replaces 0.2.1 and af1053293dc314ee8a6bc42692915abdb0367c6c38355fb051315d62cd9ce30e and pushes the
# rendered file to Casks/resenha-dev.rb for every stable team release.
cask "resenha-dev" do
  version "0.2.1"
  sha256 "af1053293dc314ee8a6bc42692915abdb0367c6c38355fb051315d62cd9ce30e"

  url "https://github.com/aldeia-group/resenha-dev/releases/download/v#{version}/ResenhaDev.dmg"
  name "Resenha Dev"
  desc "Remote-pairing rooms with screen, camera, and microphone sharing"
  homepage "https://resenha.dev/"

  depends_on macos: :sequoia

  app "Resenha Dev.app"

  zap trash: [
    "~/Library/Application Support/dev.resenha.internal",
    "~/Library/Caches/dev.resenha.internal",
    "~/Library/Containers/dev.resenha.internal",
    "~/Library/HTTPStorages/dev.resenha.internal",
    "~/Library/Preferences/dev.resenha.internal.plist",
    "~/Library/Saved Application State/dev.resenha.internal.savedState",
  ]
end
