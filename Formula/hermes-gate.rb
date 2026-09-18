class HermesGate < Formula
  include Language::Python::Virtualenv

  desc "Bounded, receipt-bound completion rail for coding sessions"
  homepage "https://hermes-labs.ai/open-source"
  url "https://files.pythonhosted.org/packages/1c/27/beaa95aab752529fc31d5c156f9b38c40285fa7d89fa2d71c7b888b26984/hermes_gate-0.1.6.tar.gz"
  sha256 "e1fabf63f1f014611bd368ace4164f5cc2af7778661e42fb970816e4ccbcc453"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hermes-gate --version")
  end
end
