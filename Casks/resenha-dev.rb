# Template for the ad-hoc-signed internal cask published to aldeia-group/homebrew-tap.
# The release workflow replaces 0.2.5 and fc6db4001542c9acc922a12bce8055406d62682fd14982d825fe657597c39bf4 and pushes the
# rendered file to Casks/resenha-dev.rb for every stable team release.
cask "resenha-dev" do
  version "0.2.5"
  sha256 "fc6db4001542c9acc922a12bce8055406d62682fd14982d825fe657597c39bf4"

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
