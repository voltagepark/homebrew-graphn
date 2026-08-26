class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.30"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.30/graphn-darwin-arm64"
      sha256 "87ba114a0ada2feea038441996d1433529ef5d53399b3993d369d4fa87427456"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.30/graphn-darwin-amd64"
      sha256 "f31ece97c6abe3a19224b72bea1fb1b426bcab4d9fdec88525a2e8c9ea8eaa8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.30/graphn-linux-arm64"
      sha256 "b4fb65864f40809618c35cec91c964a0c8c42c7b6a514ddad58cc4efa16e8805"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.30/graphn-linux-amd64"
      sha256 "44228ff1aefb80793f80505357e7f40cc3dd419eef0734e126a4f054b96d6ba8"
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
