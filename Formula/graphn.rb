class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.12"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.12/graphn-darwin-arm64"
      sha256 "114eee08e94c2c235b23dc133353329585c7d9529cb5ef4ca3a17ce19e03aff4"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.12/graphn-darwin-amd64"
      sha256 "9f1db087cd8f1bf51f80bc3cc30840cc2e92dc4b90055a4e1fc07b95a8c68f10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.12/graphn-linux-arm64"
      sha256 "720667faa344e3b33f03a7ae0575c40c4efeaaabc084958a3ebf949d47148b02"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.12/graphn-linux-amd64"
      sha256 "d1df80ed8150032051183d1d27b06d7972f91b9bbe7c3efd667ac5a503c2c5af"
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
