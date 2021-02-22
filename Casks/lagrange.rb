cask "lagrange" do
  version "1.1.4"

  if Hardware::CPU.intel?
    sha256 "b5e1859c9074adf307527b395233c1077707cdb828d41d07c3ca4f5353659b67"

    url "https://git.skyjake.fi/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz"

    depends_on macos: ">= :high_sierra"
  else
    sha256 "3776e5a7a79461b4759e1004184346662884893eb4a3baa24380d0643125c3b8"

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
