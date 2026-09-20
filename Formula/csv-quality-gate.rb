class CsvQualityGate < Formula
  include Language::Python::Virtualenv

  desc "Fail fast on malformed CSV input"
  homepage "https://github.com/hermes-labs-ai/csv-quality-gate"
  url "https://files.pythonhosted.org/packages/ce/55/566ea265a193ac756b97ba1651fd03646ab6dd3d44c671f6086f851bbc52/csv_quality_gate-0.3.1.tar.gz"
  sha256 "e89265a757e0a95f65cbb199dc220aa068515b43a19f93bf4dcb00e84c924fc9"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"clean.csv").write("company\nAnalytical Engines\nCompiler Systems\n")
    assert_match "PASS", shell_output("#{bin}/csv-quality-gate check clean.csv")
  end
end
