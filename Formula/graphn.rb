class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.3/graphn-darwin-arm64"
      sha256 "dd8828eb394741cad2f92c1980f9cf3f20416258b9337b41d00c4041e9041231"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.3/graphn-darwin-amd64"
      sha256 "579f4d7de665b7ba0ce790b870c5cab64fe4b87c680e0c7264294448066ea850"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.3/graphn-linux-arm64"
      sha256 "c5bde44d7ea5a42e53470a1a019ebd07e299d0b915d1f0533c1626168d973357"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.3/graphn-linux-amd64"
      sha256 "cdc28aa3fe6a01b82508800175ad1a7349f1cb9c16d5a4ccc01659f664c20d27"
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
