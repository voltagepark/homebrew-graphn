class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.2/graphn-darwin-arm64"
      sha256 "1280d140af29fb329f58dc6ec1b68eefff10abc7fe2b9635e8470e99ad2647d2"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.2/graphn-darwin-amd64"
      sha256 "3b91dee40aed18b629100fe516d560095905b5ec5d36885ffacfd9a70f2216cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.2/graphn-linux-arm64"
      sha256 "0fbe309aaf932ff674886253dee86b897d0faec7652e444cb99914000e85c60c"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.2/graphn-linux-amd64"
      sha256 "22e2420c186de54f14fdba6cf192d36a978c895088f57ec0013203b929f93ec4"
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
