class Lintlang < Formula
  include Language::Python::Virtualenv

  desc "Static linter for AI agent configs, tool descriptions, and system prompts"
  homepage "https://lintlang.ai/"
  url "https://files.pythonhosted.org/packages/30/eb/ac44864cd0b79412cca933a4c57bcd9caa576f0bdba4fc9f6212c596c067/lintlang-0.8.2.tar.gz"
  sha256 "09b6eb9f9f256db5b892455db45f80888a5a1e701b7307254723989f9c46727f"
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
