class HermesSupersearch < Formula
  include Language::Python::Virtualenv

  desc "Deadline-bounded local search fan-out with source-explicit JSON receipts"
  homepage "https://github.com/hermes-labs-ai/supersearch"
  url "https://files.pythonhosted.org/packages/d9/59/f669c92ce1985cee2a3080d678c4f356e6fea600daeb2748ae5e3b3a44c2/hermes_supersearch-0.11.0.tar.gz"
  sha256 "ffcaebe4f92e5b3dece202340993ad2c4948ac4218585947ace79d5e32a89a53"
  license "Apache-2.0"

  depends_on "pkgconf" => :build
  depends_on "rust" => :build
  depends_on "libxml2"
  depends_on "libxslt"
  depends_on "numpy"
  depends_on "python@3.13"

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a9/d2/f4d173e22df740bc37b1db102b386ba719b66e95b0f0d751f556b387e6d2/anyio-4.15.1.tar.gz"
    sha256 "9f28306018cbd6d329e64a36d58256edff76dd996fe423bc957326e578b82a94"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e5/3f/143b048436775b0f76ac3eec145c019e8173ccc2885c8f20319b996d5e83/charset_normalizer-3.5.1.tar.gz"
    sha256 "6117b84ea48435e5356dc737f5121485c30920ba43375fa7b434fd753df0eac3"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/c7/0e/7fa0ef50764b67090eca4114772a2abf8b6148198475e54c660b97caeee6/click-8.5.0.tar.gz"
    sha256 "ba0d2089de75ea0310e2dde03160e6ca10009947fb95a182f9b54021bb272e34"
  end

  resource "ddgs" do
    url "https://files.pythonhosted.org/packages/68/30/dd2ff7d817573e30836fb99bdc04e167ce03ac5b878072b3e9e892aa810b/ddgs-9.16.0.tar.gz"
    sha256 "161ca8e78ea08d40cd3f83fb12279b49322ffb342d981368bfa39bed9847d874"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "lxml" do
    url "https://files.pythonhosted.org/packages/23/ad/28ecd7cb894d172f3c9c80a075eeeb2017ac62e3632cee05a5f9493547eb/lxml-6.1.3.tar.gz"
    sha256 "45222d94ddd511536f3b2f7d9deae3b2339b4ce0f075f1ca25703b07cad9dd21"
  end

  resource "primp" do
    url "https://files.pythonhosted.org/packages/c7/01/c2a43378aaaf29539971766a007f3185fbe3f208f431b0969fa85c5a2111/primp-2.0.1.tar.gz"
    sha256 "82ba17b077bef19a189d9ec8d77ca632496cb444e0f4fa37e27e90041cf0da8f"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/ac/c3/e2a2b89f2d3e2179abd6d00ebd70bff6273f37fb3e0cc209f48b39d00cbf/requests-2.34.2.tar.gz"
    sha256 "f288924cae4e29463698d6d60bc6a4da69c89185ad1e0bcc4104f584e960b9ed"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  def install
    venv = virtualenv_create(libexec, "python3.13")

    # numpy comes from Homebrew's numpy formula; expose it to this virtualenv.
    site_packages = Language::Python.site_packages("python3.13")
    numpy_site = Formula["numpy"].opt_prefix/site_packages
    (libexec/site_packages/"homebrew-numpy.pth").write "#{numpy_site}\n"

    ENV.prepend_path "PATH", Formula["libxml2"].opt_bin
    ENV.prepend_path "PATH", Formula["libxslt"].opt_bin
    ENV.prepend_path "PKG_CONFIG_PATH", Formula["libxml2"].opt_lib/"pkgconfig"
    ENV.prepend_path "PKG_CONFIG_PATH", Formula["libxslt"].opt_lib/"pkgconfig"

    venv.pip_install resources
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "supersearch verify", shell_output("#{bin}/supersearch --help")
    system libexec/"bin/python", "-c", "import numpy, lxml.etree, ddgs, supersearch"
  end
end
