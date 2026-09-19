class AgentConvergenceScorer < Formula
  include Language::Python::Virtualenv

  desc "Score lexical convergence across agent outputs"
  homepage "https://github.com/hermes-labs-ai/agent-convergence-scorer"
  url "https://files.pythonhosted.org/packages/9e/cd/817ca2b863c28072350335c88f80c210dcc992952a35c650b1187fd4b06c/agent_convergence_scorer-0.2.0.tar.gz"
  sha256 "ff884379bcd37cbe58379e1762b660765fb042a67b6f3674e107da94850f85cf"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-convergence-scorer --version")
  end
end
