class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.25"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.25/graphn-darwin-arm64"
      sha256 "30b5812e123cd762321ffec50617616fd04442645db506e3fcebc70fd077f152"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.25/graphn-darwin-amd64"
      sha256 "da73d9b6186c9e22b49abf3b4179df4985a2237dcd6365c18c047394024fa66d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.25/graphn-linux-arm64"
      sha256 "afe731159ff1c0b879fd32637d3e3687417c39c5290f13f2cba9df63893117ff"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.25/graphn-linux-amd64"
      sha256 "5eb73315473427e4809f7fe13d28358d5850ef04ca6376fc1cd6524a18488c85"
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
