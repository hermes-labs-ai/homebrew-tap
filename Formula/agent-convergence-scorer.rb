class AgentConvergenceScorer < Formula
  include Language::Python::Virtualenv

  desc "Score lexical convergence across agent outputs"
  homepage "https://github.com/hermes-labs-ai/agent-convergence-scorer"
  url "https://files.pythonhosted.org/packages/9e/cd/817ca2b863c28072350335c88f80c210dcc992952a35c650b1187fd4b06c/agent_convergence_scorer-0.2.0.tar.gz"
  sha256 "ff884379bcd37cbe58379e1762b660765fb042a67b6f3674e107da94850f85cf"
  license "MIT"

  depends_on "python@3.13"

  resource "hatchling" do
    url "https://files.pythonhosted.org/packages/62/7f/b20bd29978bec1f2ddd3bbc1cdc5829bb2dd5c1476facd8a84bfe9934c5e/hatchling-1.32.3.tar.gz"
    sha256 "acdd4436d84d829c6e7ae6df723241d8f0bca9c5bad5a6148bd41f2ea6b8a792"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7d/fa/3944b40b07da9ce895c0e6303a5ab7d53da063554f534556b134a54d6093/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/5a/82/42f767fc1c1143d6fd36efb827202a2d997a375e160a71eb2888a925aac1/pathspec-1.1.1.tar.gz"
    sha256 "17db5ecd524104a120e173814c90367a96a98d07c45b2e10c2f3919fff91bf5a"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/f9/e2/3e91f31a7d2b083fe6ef3fa267035b518369d9511ffab804f839851d2779/pluggy-1.6.0.tar.gz"
    sha256 "7dcc130b76258d33b90f61b658791dede3486c3e6bfb003ee5c9bfb396dd22f3"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/94/96/e07752635b98536177fa1f37671c8f3cdde2e724c6bcf6034b2cfb571565/tomlkit-0.15.1.tar.gz"
    sha256 "e25bbf38843005246210a12982776f27f99cb9be67160e14434d0c0d21ee1e97"
  end

  resource "trove-classifiers" do
    url "https://files.pythonhosted.org/packages/c2/e3/7ca82ee24c82d344584abd5b8637b3bd056f2900226e8d82fc22f1184b92/trove_classifiers-2026.6.1.19.tar.gz"
    sha256 "c5132b4b61a829d11cfbd2d72e97f20a45ed6edb95e45c5efdeb5e00836b2745"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = pipe_output("#{bin}/agent-convergence-scorer - --indent 0", '["same", "same"]')
    assert_match '"convergence_score": 1.0', output
  end
end
