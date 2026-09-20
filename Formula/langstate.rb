class Langstate < Formula
  include Language::Python::Virtualenv

  desc "Inspect and verify compressed LLM conversation state"
  homepage "https://hermes-labs.ai/langstate"
  url "https://files.pythonhosted.org/packages/8e/66/4aed97c10f4bfbedb347f169acf8db68117cc152c314ebdeb83cb5c4a1de/langstate-0.2.4.tar.gz"
  sha256 "0c0cf4252cf803c1146ced17c5727e77aaabd06ad3b7b58adb2a9f8ea7be33fd"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "token_reduction", shell_output("#{bin}/langstate demo")
  end
end
