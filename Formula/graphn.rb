class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.33"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.33/graphn-darwin-arm64"
      sha256 "ac0545e92a6d676d28b85bef16cccb9e0dfe0df254d9522044a1b04a5aab1e6c"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.33/graphn-darwin-amd64"
      sha256 "14b2ca5269b52bb5a8d5bb7b62ff52548ae480f4ee20e92eee95365aa0939d3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.33/graphn-linux-arm64"
      sha256 "4f7f01b02a93f1b4ffbb65c740037fdff5a6ca0d2981bb2613c5281aa59e7534"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.33/graphn-linux-amd64"
      sha256 "52d10d96d93f488fe975f07e6e1c305d95273fe19d8817caae470072ea77ec38"
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
