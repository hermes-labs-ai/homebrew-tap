class QuickGate < Formula
  desc "Deterministic JavaScript and TypeScript CI quality gate"
  homepage "https://github.com/hermes-labs-ai/quick-gate-js"
  url "https://registry.npmjs.org/quick-gate/-/quick-gate-0.3.2.tgz"
  sha256 "2d6e29b0f63e7fefdf03d5ffe86cbbdf220c3175542017d571a54fef3ed9b2a6"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "quick-gate #{version}", shell_output("#{bin}/quick-gate --version")
  end
end
