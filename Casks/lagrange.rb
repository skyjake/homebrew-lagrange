cask "lagrange" do
  version "1.1.3"

  if Hardware::CPU.intel?
    sha256 "610a8568c9dde343bdf492ac719c57d45e715fc2a82d8763f9562048ef011633"

    url "https://git.skyjake.fi/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz"

    depends_on macos: ">= :high_sierra"
  else
    sha256 "a52434bc9e7b8cb21061fc0624d3d7eb282cf9de613cef284ef46c108f8cf237"

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
