class RuleAudit < Formula
  include Language::Python::Virtualenv

  desc "Audit AI system prompts for rule conflicts and gaps"
  homepage "https://github.com/hermes-labs-ai/rule-audit"
  url "https://files.pythonhosted.org/packages/5d/9d/26b0e0bd9252e392989cb7acd1d88713ffcfdf4117395808a96eb8773108/rule_audit-0.5.0.tar.gz"
  sha256 "d7e4b0b0094eb5d1759759f99adf936a794397dca4167c3243571166165870c0"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Rules parsed", shell_output("#{bin}/rule-audit --demo --format summary", 2)
  end
end
