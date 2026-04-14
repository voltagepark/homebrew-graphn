class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.13"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.13/graphn-darwin-arm64"
      sha256 "e79a09be4a5e16ddff5c1e39d433e030019f7e6ef898a34c4f7944eb2d60335d"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.13/graphn-darwin-amd64"
      sha256 "39905feb5bfeb45bdeb65233b0a1278bd1d15ee9332ce8f55946bd4ba10de10f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.13/graphn-linux-arm64"
      sha256 "c18ce5a51067062545c9c7f547a77d6acbf61f4425180b6c1c39c31783d1870f"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.13/graphn-linux-amd64"
      sha256 "3c6f04ce470cf9c1362b0b0e2db62dbbdf1dbbc9f63f85d45a80c230a31769eb"
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
