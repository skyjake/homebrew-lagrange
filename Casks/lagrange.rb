cask "lagrange" do
  version "1.0.1"
  sha256 "336a637817a9670cdb835c34e74f7c128ab3bec8dd671602ace5f7d3fe791d1f"

  url "https://git.skyjake.fi/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz"
  appcast "https://github.com/skyjake/lagrange/releases.atom"
  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  depends_on macos: ">= :high_sierra"

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end
