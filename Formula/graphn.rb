class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.28"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.28/graphn-darwin-arm64"
      sha256 "c7eb0eb1d393a52f7b2d48125b16cc9878e52ba681737f4a891b33b398c8ee98"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.28/graphn-darwin-amd64"
      sha256 "d2fad34f75eaf255b7e9f605a0849c2d15704d1f5515f988ebd9f14c3a87272f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.28/graphn-linux-arm64"
      sha256 "8499f4374a626dab4ba072ff6f918ef0422a3761938a8a6a8c6074d2a1549453"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.28/graphn-linux-amd64"
      sha256 "09dac1fcee632868aac42d099a2c96790f65c83df8122bb4b0f667dea1fc1a6f"
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
