# Generated with JReleaser 1.3.1 at 2022-11-23T18:39:55.160518128-08:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.10/kobweb-0.9.10.zip"
  version "0.9.10"
  sha256 "34bb06e69914632c6d32ce13a566ca90a40049d062b255744b8e0a1dd4336635"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.10", output
  end
end
