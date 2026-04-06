class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.1/graphn-darwin-arm64"
      sha256 "4ecb47ce924633f7b89200323ec799f02041c35bc7738c17d26f6f3a05e13a85"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.1/graphn-darwin-amd64"
      sha256 "8fc8d0b144e336bf53bfd5e7e7164aa568c7ee5ee0874d823ae8664cc31bb270"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.1/graphn-linux-arm64"
      sha256 "8ef1a14fbbdba9a25587f9528e8b4d742b27a8028b32996f32f64e1b9cc2536d"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.1/graphn-linux-amd64"
      sha256 "964bea1919f4bfd503293dc10fac7171c0e44147baa54406cc872a6a6b9be60d"
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
