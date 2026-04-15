class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.16"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.16/graphn-darwin-arm64"
      sha256 "283f29f8a895f55fc3aef0b9f42e1f32ce4893ac637aefdf59aed7cb456bd245"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.16/graphn-darwin-amd64"
      sha256 "cbf3f18cc9c60ae5bcc279d95578c518257d21eb4b19af93804559265e8d335a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.16/graphn-linux-arm64"
      sha256 "9a5dde6ccb3a35c6fe4d399af3b86b60cb14de58a7e87cf6b3b9650a84c60837"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.16/graphn-linux-amd64"
      sha256 "520f2398ddff1aaa98fa2e1f63df665e294ecefc0e3b2f22724125edce56c390"
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
