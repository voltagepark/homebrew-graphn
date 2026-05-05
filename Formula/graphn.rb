class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.18"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.18/graphn-darwin-arm64"
      sha256 "e00ccc90460a44d4e59c03802d9ebf711d6f1320c958a5ec1e175ebc8aa19f1d"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.18/graphn-darwin-amd64"
      sha256 "b9e3c882db5c99dfcf1977a6d2aa4067c2aa9ca1f79c2d890773543e6ac6f464"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.18/graphn-linux-arm64"
      sha256 "32c79ce7c6162b9f53c78e2f29999b11796e7064019bec9715b885e0d6eaee36"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.18/graphn-linux-amd64"
      sha256 "3717f9964cc4480da5c49c48e80def9e0fb8c4e0e8499b8ec7afda983720d214"
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
