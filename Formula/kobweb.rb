# Generated with JReleaser 1.10.0 at 2024-02-22T22:37:42.508635Z

class Kobweb < Formula
  desc "Set up and manage your Kobweb (Compose HTML) app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.15/kobweb-0.9.15.zip"
  version "0.9.15"
  sha256 "bfd4a231c4dbc52d7ca7be6a4ab1ba852c0e3ccc2d4268759c38b620c882c51a"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.15", output
  end
end
