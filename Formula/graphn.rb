class Graphn < Formula
  desc "GraphN CLI"
  homepage "https://graphn.ai"
  version "v1.0.27"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.27/graphn-darwin-arm64"
      sha256 "f973d398a2986d1e5bc59928a5fcb32a69597350e2705743ff069ed2c9126b2a"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.27/graphn-darwin-amd64"
      sha256 "f586d1cb8d6fdcd248042edff11e42842de452c017a572875c876c6302ef8b31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.27/graphn-linux-arm64"
      sha256 "8a25b5f16c848f3db896682a9e3d339b2ab50d6c8dba6ebb6f5bffa6e3699c37"
    else
      url "https://github.com/voltagepark/graphn-cli/releases/download/v1.0.27/graphn-linux-amd64"
      sha256 "de80b1fee01b95bc6c3310fda2b67c1cc22aeb1a89c40aba820ed2eb3dfd4ca2"
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
