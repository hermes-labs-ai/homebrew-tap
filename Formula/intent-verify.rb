class IntentVerify < Formula
  include Language::Python::Virtualenv

  desc "Check source coverage of markdown acceptance items"
  homepage "https://github.com/hermes-labs-ai/intent-verify"
  url "https://files.pythonhosted.org/packages/39/22/04aa28ea41debaf74cd9cb5b3ee89b324594ebcc2c6c4397ab4fadc6f94f/intent_verify-0.2.1.tar.gz"
  sha256 "a27fb2a43bac51e005fab033920d10844f5f25c4cda0e67803f4c81fc0edc3c5"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"SPEC.md").write("# Requirements\n\n- [ ] parser handles JSON input\n")
    (testpath/"parser.py").write("# Parser handles JSON input.\ndef parse_json_input():\n    return True\n")
    output = shell_output(
      "#{bin}/intent-verify check --spec SPEC.md --repo . --evidence-path parser.py " \
      "--min-verified 0.5 --min-item 0.2",
    )
    assert_match "VERIFIED", output
  end
end
