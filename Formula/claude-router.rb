class ClaudeRouter < Formula
  include Language::Python::Virtualenv

  desc "Route prompts to a Claude model tier and scaffold using local embeddings"
  homepage "https://github.com/hermes-labs-ai/claude-router"
  url "https://files.pythonhosted.org/packages/4f/58/d183d2d653b0df774ed5c56768624663b1af0a47d382a172ff036dc84735/claude_router-1.1.1.tar.gz"
  sha256 "551ddb452f58ea0d425e0f347b5597066206a9db94de3be895fe063622993e8d"
  license "MIT"

  depends_on "numpy"
  depends_on "python@3.13"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e5/3f/143b048436775b0f76ac3eec145c019e8173ccc2885c8f20319b996d5e83/charset_normalizer-3.5.1.tar.gz"
    sha256 "6117b84ea48435e5356dc737f5121485c30920ba43375fa7b434fd753df0eac3"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  def install
    venv = virtualenv_create(libexec, "python3.13")

    # numpy comes from Homebrew's numpy formula; expose it to this virtualenv.
    site_packages = Language::Python.site_packages("python3.13")
    numpy_site = formula_opt_prefix("numpy")/site_packages
    (libexec/site_packages/"homebrew-numpy.pth").write "#{numpy_site}\n"

    venv.pip_install resources
    venv.pip_install_and_link buildpath
  end

  test do
    assert_path_exists bin/"claude-router"
    output = shell_output("#{libexec}/bin/python -c 'import numpy, requests, claude_router; print(claude_router.__version__)'")
    assert_match version.to_s, output
  end
end
