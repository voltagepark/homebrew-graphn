class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.21"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.21/graphn-darwin-arm64"
      sha256 "beccfb208fad89a9b9dd34f246eceba9e1205a2d9190c3a5b81d40ab90276a8c"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.21/graphn-darwin-amd64"
      sha256 "24c671c814e2762727ede3003cdf84f571b5ec4405ee0af9a98ee3a2ede7d291"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.21/graphn-linux-arm64"
      sha256 "31b4ecd68b3d409e7a9b1f418831e3ac07cbdc256fbfcf8e3cbd0bc19465d673"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.21/graphn-linux-amd64"
      sha256 "4e7090b1b260d2427efacc6659bbbebe394dd3ebb302eb70dcbc059c58454465"
    end
  end

  def install
    binary = Dir["graphn-*"].first || "graphn"
    bin.install binary => "graphn"
  end

  test do
    assert_match "graphn", shell_output("#{bin}/graphn version")
  end
end
