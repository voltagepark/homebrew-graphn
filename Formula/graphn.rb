class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.20"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.20/graphn-darwin-arm64"
      sha256 "b6e2569148d735b334e4a904384065f368d81b5c4bcfa7df6757baf2923fdbd3"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.20/graphn-darwin-amd64"
      sha256 "e65def3180c7fffb0bc74e8dfa133aa32f92cea586a4cad0339e6a7d27005d0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.20/graphn-linux-arm64"
      sha256 "63c341c8fafd5e0e72223944b163eb2a56aa4e629b3f5c78529306482cc36b83"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.20/graphn-linux-amd64"
      sha256 "8662b4b7bf8c3e76b5a08457bcdb67bc437af1ce1c8e984851913f71b66490eb"
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
