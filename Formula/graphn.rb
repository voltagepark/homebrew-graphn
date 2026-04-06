class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.0/graphn-darwin-arm64"
      sha256 "1e80d0494b0870c8aed2d1280f992497c4cedd8a40241ff9de23e7c5e9b6e8bd"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.0/graphn-darwin-amd64"
      sha256 "f8e34364379d8964f2e6e465da63e6d44f96f7c0703a76988a1b4105476910f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.0/graphn-linux-arm64"
      sha256 "1fcc8171e4ae6325afafe42c6df5600efd8b3138e5701e2b7cb300fa16815f37"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.0/graphn-linux-amd64"
      sha256 "4ea9b0e7beeaa299e4511515d8f98f87c46b6ef162ecf648db9d760bf0b08f9f"
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
