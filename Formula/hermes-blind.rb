class HermesBlind < Formula
  include Language::Python::Virtualenv

  desc "Deterministic prompt and session recovery scaffolds for coding agents"
  homepage "https://hermes-labs.ai/open-source"
  url "https://files.pythonhosted.org/packages/1a/45/4b7f7b98ede2b7586fcf5962ed24d5b001c1167e9d1d4d51d7f763ad5b34/hermes_blind-0.3.2.tar.gz"
  sha256 "30e1cc2531f54e111e2aa46c7c4edb7e1aaeaa1c7a65a5980552aa11348678be"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "deterministic prompt and session recovery", shell_output("#{bin}/hermes-blind --help")
  end
end
