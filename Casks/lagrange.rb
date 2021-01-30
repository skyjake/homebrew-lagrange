cask "lagrange" do
  version "1.1.0"

  if Hardware::CPU.intel?
    sha256 "1b39afad63b20799a223ba0de423d526135cfa99ce2471cc255e4d50ead4f6fc"

    url "https://git.skyjake.fi/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz"

    depends_on macos: ">= :high_sierra"
  else
    sha256 "6befb2199c0b2e0146fdcbb0cc6d937ce8a0a537dddca6065bdb94a480e04840"

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
