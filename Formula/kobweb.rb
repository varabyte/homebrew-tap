# Generated with JReleaser 1.14.0 at 2025-08-10T05:37:20.968987Z

class Kobweb < Formula
  desc "Set up and manage your Kobweb (Compose HTML) app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.21/kobweb-0.9.21.zip"
  version "0.9.21"
  sha256 "3c57f425f60c1c1489e9da0a7a4eb36948912d0f133eefa0d3645cd46d32392c"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.21", output
  end
end
