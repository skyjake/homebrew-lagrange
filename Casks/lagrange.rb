cask "lagrange" do
  version "1.3.4"

  if Hardware::CPU.intel?
    sha256 "e466841837aceb75e16a359b3e0fd93ae2b053b565a2a1160fe28b7f51b55662"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz"

    depends_on macos: ">= :high_sierra"
  else
    sha256 "145e7d818f596566065998c9ce73a620a5ca8195635f4afd50c59a932fed9e40"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos11.0-arm64.tbz"

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
