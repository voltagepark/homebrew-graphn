class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.34"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.34/graphn-darwin-arm64"
      sha256 "b5b6a6c72d8d28d89fcd2dcb8ac252e0f110b65680a0f1e098a8e3cb7751cf90"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.34/graphn-darwin-amd64"
      sha256 "1714b1808074461ae2b64726cd4c95bf2fefeb7b3cd53e810340aba2b0e0b369"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.34/graphn-linux-arm64"
      sha256 "faed0dc90b45405b4b41e18c2505872f03540386f6dc2d4384972b67ae474dee"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.34/graphn-linux-amd64"
      sha256 "461bb8f735920b0003d202c809786cd79e07df2256393f634f01b5c37636cdad"
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
