cask "lagrange" do
  version "1.5.0"

  if Hardware::CPU.intel?
    sha256 "17d0ec6b26b09273e450db79a90b5618715a7737766d609c2dbdd0bf23bfd598"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz"

    depends_on macos: ">= :high_sierra"
  else
    sha256 "b9badf6fac31ddc1b7922a9082477ca13ab931cbfd9cf4fae8ed47c32f5dbaa2"

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
