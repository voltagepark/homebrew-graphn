class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.10"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.10/graphn-darwin-arm64"
      sha256 "83ac6ce9b4b0edf695cfa73c6dc801e1b8d5105e9811bf4634d5dbeeb30600f6"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.10/graphn-darwin-amd64"
      sha256 "c4fcd499e307a2e858b3682eaae80776ec674bdae4ec482560b366378bd501dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.10/graphn-linux-arm64"
      sha256 "62610ea8b429f87143cf284e86727a28f91f92e37b22be9f28489726ece1ea73"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.10/graphn-linux-amd64"
      sha256 "b84deaca26afb48d6b5195a3d0dc064a8023996a1af2939f25a68b7b94a77f9c"
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
