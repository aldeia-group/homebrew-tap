# Template for the unsigned internal cask published to aldeia-group/homebrew-tap.
# The release workflow replaces 0.2.2 and 1f658df751aaaddcdb6e6613b17f99db27c3f057b2cb36f166b5245325c9fe99 and pushes the
# rendered file to Casks/resenha-dev.rb for every stable team release.
cask "resenha-dev" do
  version "0.2.2"
  sha256 "1f658df751aaaddcdb6e6613b17f99db27c3f057b2cb36f166b5245325c9fe99"

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
