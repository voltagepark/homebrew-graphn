class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.9"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.9/graphn-darwin-arm64"
      sha256 "20f09b377d133461cdbcc9b94b35903a7ad3a149b71ff709e340eb123c13944c"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.9/graphn-darwin-amd64"
      sha256 "c99e58eedea26e950290453218b9b240b0b3820befc7cfb9ddfb30e89e08f73c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.9/graphn-linux-arm64"
      sha256 "206ae02e5845cb2b6b7a9d66c968b029b4738ed201a685461a5ca12a850adbbd"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.9/graphn-linux-amd64"
      sha256 "5f9e1551ea3682c37759a32608479d990cca83dc52e2dfa6f440fe167145101d"
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
