class HermesRubric < Formula
  include Language::Python::Virtualenv

  desc "Evidence-first structured scoring of AI artifacts with LLM-as-judge backends"
  homepage "https://hermes-labs.ai/hermes-rubric"
  url "https://files.pythonhosted.org/packages/64/78/a04ce1adda907c97a4e2326fdff20dbcdb0c2d04317e67c18603b0bf59fb/hermes_rubric-1.2.3.tar.gz"
  sha256 "29247d9918119171ffa102477ddc4354e9478a7c4dedc6da5e2984cf45b374c6"
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
    assert_match version.to_s, shell_output("#{bin}/hermes-rubric --version")
  end
end
