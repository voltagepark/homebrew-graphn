class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.19"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.19/graphn-darwin-arm64"
      sha256 "8aeb79ca0286d38118be2547cd46f5d348c4358e447928c807afa7f14f05374a"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.19/graphn-darwin-amd64"
      sha256 "974851f1f95df92e044c2f246e901bb0dcdaee157ae3240b146443ac3498a027"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.19/graphn-linux-arm64"
      sha256 "b361c0e71f673279d9a245e053d22bb9bacafaa4001d3ff26241c92685fd2f69"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.19/graphn-linux-amd64"
      sha256 "565a077c91efcfdd416920d7c5812b30d54489bf60fcce557a761c2beca8aada"
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
