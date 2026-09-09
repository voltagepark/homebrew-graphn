class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.31"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.31/graphn-darwin-arm64"
      sha256 "4b8f1d7483330b3738908c45eeb42c257ff3f95fffd04ddec1f1d07ce747a813"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.31/graphn-darwin-amd64"
      sha256 "38daedcce5202a190c7015bfcf04071f2706a310f4e8cf6971b3389a0ef8ff9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.31/graphn-linux-arm64"
      sha256 "74fb2045800ce73c0ee53129cd1c4ec68a72eb804e17fb172af6c98417707a37"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.31/graphn-linux-amd64"
      sha256 "8f097f11898f8ec63896467f906eed8ac27b6c574c0ee58349126c3abd29d35f"
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
