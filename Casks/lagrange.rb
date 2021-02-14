cask "lagrange" do
  version "1.1.3"

  if Hardware::CPU.intel?
    sha256 "9e25cce5db46a6b98207a6b5f49061d78576c950bd629179a0a8c0c114ed1b05"

    url "https://git.skyjake.fi/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz"

    depends_on macos: ">= :high_sierra"
  else
    sha256 "4bfe26a2127cb7267a74bef3668d86cd0ff6d9ac446920b27e6da5b5650bfa4d"

    url "https://git.skyjake.fi/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos11.0-arm64.tbz"

    depends_on macos: ">= :big_sur"
  end

  appcast "https://github.com/skyjake/lagrange/releases.atom"

  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end
