class RuleAudit < Formula
  include Language::Python::Virtualenv

  desc "Audit AI system prompts for rule conflicts and gaps"
  homepage "https://github.com/hermes-labs-ai/rule-audit"
  url "https://files.pythonhosted.org/packages/1e/0f/0b4d4389c874cbad55e3453a3bbbab4b7f4f9872c66096aecdc934236eb7/rule_audit-0.4.0.tar.gz"
  sha256 "5a3db509511a3ecc705a0a85893b6ff63cc6025eea09edad03aa61e39be057a0"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rule-audit --version")
  end
end
