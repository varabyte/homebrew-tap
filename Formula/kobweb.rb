# Generated with JReleaser 1.0.0-M1 at 2022-02-02T10:35:32.418969-08:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.4/kobweb-0.9.4.zip"
  version "0.9.4"
  sha256 "5b16ed70084e9aa8146acc30281d11a038582d9531c5aac2d300f906fb8e4710"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb version")
    assert_match "0.9.4", output
  end
end
