# Generated with JReleaser 1.25.0 at 2026-08-19T22:43:20.498736129Z

class Kobweb < Formula
  desc "Set up and manage your Kobweb (Compose HTML) app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.22/kobweb-0.9.22.zip"
  version "0.9.22"
  sha256 "7b77b3f1cc0af7b8c00d9d1e46075b5339f4bb047d5a4acf7206f7b4072c2dce"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.22", output
  end
end
