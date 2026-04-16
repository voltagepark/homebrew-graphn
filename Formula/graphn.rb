class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.17"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.17/graphn-darwin-arm64"
      sha256 "eda048a2f7153ee3c2c4a52bb7fb9d3ea3f3f25fa3fea2f813ab18acc124b634"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.17/graphn-darwin-amd64"
      sha256 "f645e601d8c314ba3783e52a7f9b44829a2ac34dd3863f1f57221d118a8b4482"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.17/graphn-linux-arm64"
      sha256 "07838581699fd6e928b14f27e0d03e12e2206603bad4a06bcae02adc99522db9"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.17/graphn-linux-amd64"
      sha256 "c60955c24c0d4df655d5bb61704756d5d84538a5a0c7099298e8dc90924ac271"
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
