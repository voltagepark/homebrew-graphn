class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.24"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.24/graphn-darwin-arm64"
      sha256 "35b3ad328c6cca6e0b24302eda3b20489f8a9b66b7de0023d8cb9fe0cb3438c1"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.24/graphn-darwin-amd64"
      sha256 "98779578ae8a2ccf1b4995bd66b1dee0fef70acc476d12ffae73147e7d69cdaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.24/graphn-linux-arm64"
      sha256 "a8a93fe235ce14790c62a1e5f5488f6cec2607fe9772088dec99d0ffb2c7518e"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.24/graphn-linux-amd64"
      sha256 "e2b94031963e836b3782729a383890122c35946de6e4eaf725832793db53a7f9"
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
