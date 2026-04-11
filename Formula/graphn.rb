class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.11"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.11/graphn-darwin-arm64"
      sha256 "32a14d1653cf2fa3b74399a847308b951367426d681b8c44c252946e6b2f5e18"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.11/graphn-darwin-amd64"
      sha256 "79bef3547a1561fa8975ad5ba2e1ac6abaf4c9a6f014a43fdfd6934cb97ee116"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.11/graphn-linux-arm64"
      sha256 "2da32862dad8a9927388f696c151a857dbacfeeb4810f93b9b093173152f8a8b"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.11/graphn-linux-amd64"
      sha256 "797b8283c98ae267cc44f601eeffc6554244b6d10ed698296ec60c431cec9ee6"
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
