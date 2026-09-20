class HermesGate < Formula
  include Language::Python::Virtualenv

  desc "Bounded, receipt-bound completion rail for coding sessions"
  homepage "https://hermes-labs.ai/open-source"
  url "https://files.pythonhosted.org/packages/9e/86/5068a19cba818ddac056c1fc0d805ed24a09ec9b87c80410acf7df092bae/hermes_gate-0.1.7.tar.gz"
  sha256 "3943f8c91c28d55e7bf3af89d1251f5d21f7266706feea56c9f27a06bad6a624"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hermes-gate --version")
  end
end
