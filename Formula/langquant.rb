class Langquant < Formula
  include Language::Python::Virtualenv

  desc "Explicit conversational state outside the chat transcript"
  homepage "https://github.com/hermes-labs-ai/langquant"
  url "https://files.pythonhosted.org/packages/56/25/6ccc509adf682dcec5de33621ab5123dd67b0f87dc8ce43b1663d35b0668/langquant-0.1.1.tar.gz"
  sha256 "bd3f11cc8ff5c518542dab5bb19ccb858349f5c64ff58c0da6b1efab44fc5e64"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "langquant #{version}", shell_output("#{bin}/langquant --version")
    system libexec/"bin/python", "-c", "from langquant import ConversationState, LangQuantSession"
  end
end
