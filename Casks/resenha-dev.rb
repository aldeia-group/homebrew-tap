# Template for the unsigned internal cask published to aldeia-group/homebrew-tap.
# The release workflow replaces 0.2.3 and 5bc36e19b3e2a4870e6ae1f7af55d77db9c5d03a1b3587e29bb0830b7bc7c79e and pushes the
# rendered file to Casks/resenha-dev.rb for every stable team release.
cask "resenha-dev" do
  version "0.2.3"
  sha256 "5bc36e19b3e2a4870e6ae1f7af55d77db9c5d03a1b3587e29bb0830b7bc7c79e"

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
