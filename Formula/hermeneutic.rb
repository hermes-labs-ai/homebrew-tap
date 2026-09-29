class Hermeneutic < Formula
  include Language::Python::Virtualenv

  desc "Mine corrections from AI agent session logs into guidance for similar tasks"
  homepage "https://hermes-labs.ai/hermeneutic"
  url "https://files.pythonhosted.org/packages/f8/03/029db76ee626fe248a1ba2380a4bb09d2c094cd3766e3122c2a4fd63529b/hermeneutic-0.1.12.tar.gz"
  sha256 "c0c7bd466f358514611853ecc099d9065cfd0981816353efdd9de6cf13351b2f"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hermeneutic #{version}", shell_output("#{bin}/hermeneutic --version")
  end
end
