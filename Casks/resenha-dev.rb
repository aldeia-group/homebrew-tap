# Template for the ad-hoc-signed internal cask published to aldeia-group/homebrew-tap.
# The release workflow replaces 0.2.4 and 7e1608d5443f319680713fa044aead6e77236cbbebaadc84a569cf1794231819 and pushes the
# rendered file to Casks/resenha-dev.rb for every stable team release.
cask "resenha-dev" do
  version "0.2.4"
  sha256 "7e1608d5443f319680713fa044aead6e77236cbbebaadc84a569cf1794231819"

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
