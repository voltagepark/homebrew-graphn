class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.4/graphn-darwin-arm64"
      sha256 "60164bd9c77019ab7fe957359f77121a159f55806af2b127f86ddbe53c2e9f84"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.4/graphn-darwin-amd64"
      sha256 "be8cb4d644a0429fc5fd9728eb811cd1d5df39f43cd28184b13f63c641b0124a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.4/graphn-linux-arm64"
      sha256 "a97c6470edab6fb43ae30da2777e8f4c49915de4d9d739a7e2358da64abecb71"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.4/graphn-linux-amd64"
      sha256 "46fdc07a38ead21ee7bceb5ef6c294c5e9f0bdb282c7ef8780fd00f051fa80b4"
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
