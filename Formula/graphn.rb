class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.26"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.26/graphn-darwin-arm64"
      sha256 "9b2c844988700504910023b83dfa663696f48f890d02d01589a16e0d69542075"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.26/graphn-darwin-amd64"
      sha256 "9362ed92b478eb7eab6ed9431e5ad6c673a9759a803518c999333bc69ecc195b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.26/graphn-linux-arm64"
      sha256 "3788951b8c0ee37710927cc1e69291f05ba725e783de0dcccd296a366e4e24f3"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.26/graphn-linux-amd64"
      sha256 "311ffbb5e5c2abd5e96a6c7fdb4751bf9c6df5db227ddde83f88efe4bae15794"
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
