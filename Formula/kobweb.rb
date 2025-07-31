# Generated with JReleaser 1.14.0 at 2025-07-31T17:03:44.283964Z

class Kobweb < Formula
  desc "Set up and manage your Kobweb (Compose HTML) app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.19/kobweb-0.9.19.zip"
  version "0.9.19"
  sha256 "bf21ccc34bb749d23dd2603140188237dfb8835ab42a99cb4a719639afed6f87"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.19", output
  end
end
