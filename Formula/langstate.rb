class Langstate < Formula
  include Language::Python::Virtualenv

  desc "Inspect and verify compressed LLM conversation state"
  homepage "https://hermes-labs.ai/langstate"
  url "https://files.pythonhosted.org/packages/dc/3d/610c67497a5c8880572706405edb147a808478ee1afa3753c9e2744e48a8/langstate-0.2.3.tar.gz"
  sha256 "f1e373978630788a82719811a97432a6fa2b0bfbc2c6abb3988b772fc078daef"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "token_reduction", shell_output("#{bin}/langstate demo")
  end
end
