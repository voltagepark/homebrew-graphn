class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "0.0.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v0.0.0/graphn-darwin-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v0.0.0/graphn-darwin-amd64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v0.0.0/graphn-linux-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v0.0.0/graphn-linux-amd64"
      sha256 "PLACEHOLDER"
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
