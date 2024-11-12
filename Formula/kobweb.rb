# Generated with JReleaser 1.14.0 at 2024-11-12T00:10:28.272494Z

class Kobweb < Formula
  desc "Set up and manage your Kobweb (Compose HTML) app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.18/kobweb-0.9.18.zip"
  version "0.9.18"
  sha256 "0d625bb956b0e31d8f034f95dc5eaa45eb57bd5945bb4c6d07252f2bd841c9ec"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.18", output
  end
end
