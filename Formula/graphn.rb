class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.36"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.36/graphn-darwin-arm64"
      sha256 "cb62f6f2bf2f73a227066073043810e132d61cf96be7abcd738c7cbdd4a35a9d"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.36/graphn-darwin-amd64"
      sha256 "0f38a17124e106568de07aa58f4a0cbac068659c593308f68d3add5e1c85a2e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.36/graphn-linux-arm64"
      sha256 "4b81797876b759b197db0decc2adc757f070850caf45fce8f7c41d757a269606"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.36/graphn-linux-amd64"
      sha256 "20296663fa2f94491130cd1f031672230e135aa35ac993b20462b4d287a261a9"
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
