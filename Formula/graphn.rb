class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.15"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.15/graphn-darwin-arm64"
      sha256 "5d2910353da3b3145af6818c27bb6f6a719821edac5f7582e56ef1338753ceff"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.15/graphn-darwin-amd64"
      sha256 "420f8b29573f458264696d47e004e1da0a79edd62076c47091491fa80c357b34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.15/graphn-linux-arm64"
      sha256 "15a214f06d3de044e440d8ad7f7cfe1de328ff85910be99f5f91fef29fdc9acd"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.15/graphn-linux-amd64"
      sha256 "e5f08c1026a16e221f5f8ec014c209f06df542967fd6f846906fa029a9c9c21e"
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
