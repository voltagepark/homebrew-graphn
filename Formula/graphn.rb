class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.8"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.8/graphn-darwin-arm64"
      sha256 "c11d3d2c8e5b7ca38d06fb53bda40513f564d7045ef42c5c3b4cdd9d7fbd2ab0"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.8/graphn-darwin-amd64"
      sha256 "7ae45b4aa72950f552e782e1ab3a23d8c8cd1f03e8bd3b7b73b4b6ebe320a458"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.8/graphn-linux-arm64"
      sha256 "f20ff50f1fb8a0f3292b95b8b070764fdf32e7dcb150ef3fe101c12fee7d00ee"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.8/graphn-linux-amd64"
      sha256 "cbebd2479bd09ebe94ad87c9377a3bebcc8c89254e838e773056fe948d728d00"
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
