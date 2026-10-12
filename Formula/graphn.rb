class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.32"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.32/graphn-darwin-arm64"
      sha256 "032e6fb2dceb4b1dfdab777a5424a62b2b2bfbd8af1c2eb33541661c53164579"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.32/graphn-darwin-amd64"
      sha256 "b769e1b3aa191cccdafa57398c588fd814456bbc512e33df1ceb9ec1a6328487"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.32/graphn-linux-arm64"
      sha256 "c721a7f39440e1b6087e7eb2922cc844f3277f7c4c09fa50e0d3a07506de936a"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.32/graphn-linux-amd64"
      sha256 "3102b2835a4d5089a0b17fbdc184dbcd2f7fc3d0873a341eee3213267e16089d"
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
