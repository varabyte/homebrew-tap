# Generated with JReleaser 1.14.0 at 2025-07-31T23:21:10.166411Z

class Kobweb < Formula
  desc "Set up and manage your Kobweb (Compose HTML) app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.20/kobweb-0.9.20.zip"
  version "0.9.20"
  sha256 "af433f485dfb69c12598b0823dfe5410bc9fc560300742acace8ad2cfc05c3ce"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.20", output
  end
end
