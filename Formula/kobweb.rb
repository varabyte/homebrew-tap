# Generated with JReleaser 1.14.0 at 2024-10-23T21:40:00.589508Z

class Kobweb < Formula
  desc "Set up and manage your Kobweb (Compose HTML) app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.17/kobweb-0.9.17.zip"
  version "0.9.17"
  sha256 "9dca705532f2b5e7c956fbc671e5011d32b409205c3aac32de88e00e513061b7"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.17", output
  end
end
