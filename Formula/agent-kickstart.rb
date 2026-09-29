class AgentKickstart < Formula
  include Language::Python::Virtualenv

  desc "Project-local beginner-facing harness installer for Claude Code"
  homepage "https://github.com/hermes-labs-ai/agent-kickstart"
  url "https://files.pythonhosted.org/packages/b8/76/a56c2b01bbae12f9e51c448630c19b48e9518cd29d05aab00fa7962246d1/agent_kickstart-0.3.1.tar.gz"
  sha256 "2530408d9a8bc3306db08d038d39ed6ecebf973b8fc84459671755d61ee1f64e"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "agent-kickstart", shell_output("#{bin}/agent-kickstart --help")
    assert_match "plan", shell_output("#{bin}/agent-kickstart --help")
  end
end
