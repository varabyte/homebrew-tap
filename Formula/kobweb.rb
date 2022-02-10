# Generated with JReleaser 1.0.0-M1 at 2022-02-09T17:01:23.510014-08:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.5/kobweb-0.9.5.zip"
  version "0.9.5"
  sha256 "458e05cd982a02bd39cef6db7dddf1411f75765b6d80914384ea0e7088433866"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.5", output
  end
end
