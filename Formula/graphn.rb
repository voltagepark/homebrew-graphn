class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.35"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.35/graphn-darwin-arm64"
      sha256 "811b2d44ebaced74f5fe1abb83d78a8fda68a0f6997b4c82340388efcd01ec6a"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.35/graphn-darwin-amd64"
      sha256 "722fad104c90ddae5801748e9b63c786f9c4aadedc12bdf7e44dfb105e08e065"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.35/graphn-linux-arm64"
      sha256 "0aab1661b028da2e30bae5de15bdb196d62c0ef48f889738b8a4e2f89a2a0c94"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.35/graphn-linux-amd64"
      sha256 "3a96e975de06a17bdd4b0506071559a2310bd659210d5b8c91452dc767dc44a5"
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
