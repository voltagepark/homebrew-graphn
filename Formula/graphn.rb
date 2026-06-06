class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.22"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.22/graphn-darwin-arm64"
      sha256 "3749e3d6a996fa38f2f8d0fd3602a0e9beee1eb6551ec0b6d439f812d2b79e18"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.22/graphn-darwin-amd64"
      sha256 "22ac3b557720f54e7f86171606bfc4b2d55a53ca642902e464123a4ae6637177"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.22/graphn-linux-arm64"
      sha256 "e5cf95bc0ff7e95894a99c2bd7bc8f3a0c2364129d9cd073336ccdb1517100fb"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.22/graphn-linux-amd64"
      sha256 "dbc7640fcddd0c9f1a99da5efeb6e6a8de4bbfc6bb634ab432da6ec4090639fc"
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
