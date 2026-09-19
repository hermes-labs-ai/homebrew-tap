class Zer0lint < Formula
  include Language::Python::Virtualenv

  desc "Diagnose silent memory-extraction failures"
  homepage "https://github.com/hermes-labs-ai/zer0lint"
  url "https://files.pythonhosted.org/packages/31/fb/d1b0fb90dbf0f9d66f562d3180c903699185a865b32e41d9cac71860f85f/zer0lint-0.3.0.tar.gz"
  sha256 "a0ba760af46dbce9a6db0346933a0860626baf6841d2cfa2c1319ec8be5869fc"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zer0lint --version")
  end
end
