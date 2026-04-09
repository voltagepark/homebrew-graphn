class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.7"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.7/graphn-darwin-arm64"
      sha256 "5abd8521f63046d91b1f7e49af3a4819050908e4a7d897ecadb5ee9edf5d8a8f"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.7/graphn-darwin-amd64"
      sha256 "51c23b7861c5c8e273d7b3240c6ae824738f7f2dcaa07010672752cd5545a430"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.7/graphn-linux-arm64"
      sha256 "890c8779b82be74d733bb3f0be0713ba90c7b4662182e631ce826d343b53e63f"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.7/graphn-linux-amd64"
      sha256 "15bda7a804cd03413313320168c22d74944593cc7c974b626c6f4792b6ef4fb6"
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
