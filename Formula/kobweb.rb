# Generated with JReleaser 1.10.0 at 2024-02-22T21:15:37.286756Z

class Kobweb < Formula
  desc "Set up and manage your Kobweb (Compose HTML) app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.14/kobweb-0.9.14.zip"
  version "0.9.14"
  sha256 "4f1ed0604fa906970f9bc7d6fc4fe521a69675e170941989e802b4190da84269"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.14", output
  end
end
