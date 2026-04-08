class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.6"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.6/graphn-darwin-arm64"
      sha256 "e8af85944dc52f660a9aace99f66fb8f6012aa780fae24dfc3ecfd61da07c4f2"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.6/graphn-darwin-amd64"
      sha256 "713108c70c2b234f1617f205cea1ef25ca87777f35d5d3f0852ac872389430f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.6/graphn-linux-arm64"
      sha256 "78f8781ce02afc5615c5712739a3a4fbfbf856a98be34b66d77690ca5766a7a0"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.6/graphn-linux-amd64"
      sha256 "ec5c352d7722764f3be8b126cd9106f010f8758fd4b292827b912712e688f873"
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
