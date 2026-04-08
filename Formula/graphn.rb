class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.5/graphn-darwin-arm64"
      sha256 "abf782ebd209eae85da0db938ed2b3b272be8d6d50a8930e34622dbcfd96bca4"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.5/graphn-darwin-amd64"
      sha256 "8fdf0ba5604698429e151097846309a9fe977a4c0739f5b0bdd6cb446def6c2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.5/graphn-linux-arm64"
      sha256 "ba364f142e13046cad613709b21c1099f92b7538f7cb3952be669291a3f226ec"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.5/graphn-linux-amd64"
      sha256 "1bea3769e13c852466e81bf119bf54f2008c4b96e92f202b73789d10d862e7e5"
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
