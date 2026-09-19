class IntentVerify < Formula
  include Language::Python::Virtualenv

  desc "Check source coverage of markdown acceptance items"
  homepage "https://github.com/hermes-labs-ai/intent-verify"
  url "https://files.pythonhosted.org/packages/78/be/8e5f5545e09d476ba1ed8f99cb8428fbca86d132cd6e2328240374eb4188/intent_verify-0.2.0.tar.gz"
  sha256 "29b35337d9980b37f1db501e22eb960b8c382bfdee92e05ec83ef549793e3478"
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
