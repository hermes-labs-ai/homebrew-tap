class Lintlang < Formula
  include Language::Python::Virtualenv

  desc "Static linter for AI agent configs, tool descriptions, and system prompts"
  homepage "https://lintlang.ai/"
  url "https://files.pythonhosted.org/packages/d6/30/841117bb0110074d5c2483be4585884a2444c634a9e1d161429f1be885df/lintlang-0.7.1.tar.gz"
  sha256 "afd00466277de447bcfa41a9fe29a34dac5e40d7dfb0b8f21763f29398fb8b47"
  license "Apache-2.0"

  depends_on "libyaml"
  depends_on "python@3.13"

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "lintlang #{version}", shell_output("#{bin}/lintlang --version")

    (testpath/"tools.json").write <<~JSON
      {"tools": [{"name": "run", "description": "Does stuff."}]}
    JSON
    output = shell_output("#{bin}/lintlang scan #{testpath}/tools.json --fail-on fail", 1)
    assert_match "H1.2", output
  end
end
