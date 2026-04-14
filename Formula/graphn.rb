class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.14"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.14/graphn-darwin-arm64"
      sha256 "8bc732cbcfcb97b6bd9de6106300a6eb43a6ba230ec432b32bc182c58d6677b2"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.14/graphn-darwin-amd64"
      sha256 "aa0663c496be3303c0684c341b06dcf358100e37ce764ad69f3ce9ad931d0fb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.14/graphn-linux-arm64"
      sha256 "4b598a8f537e02fe744489ddab1e0d967a7337ad094845eada14525bbbb87f38"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.14/graphn-linux-amd64"
      sha256 "4ac150e1f9ad43313a1771685002a2747b2bebadd7d9c703b682e714291eb4f6"
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
