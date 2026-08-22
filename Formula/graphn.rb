class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.29"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.29/graphn-darwin-arm64"
      sha256 "b6e692c05029d8b223a1d5cc2b797b424ce11b0b322f4ceb354daf121697f20c"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.29/graphn-darwin-amd64"
      sha256 "b5c37d2aea5fe18878ee2fde8c0684bf4e84b581ad64587bf10780562d0a41b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.29/graphn-linux-arm64"
      sha256 "4095814465d464adee49768067ec767487e1c18278d52f03c6fb509979ed0c52"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.29/graphn-linux-amd64"
      sha256 "684a7899bf503fe3f28ed539a8c81691b3b35642f272d39807f5031a23a5e7ba"
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
