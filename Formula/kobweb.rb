# Generated with JReleaser 1.0.0-M1 at 2022-01-26T12:08:32.836577-08:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.3/kobweb-0.9.3.zip"
  version "0.9.3"
  sha256 "b93e2da904a0699229794756aa13425478fda3a887bb55bac2e5bab32a6696b3"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb version")
    assert_match "0.9.3", output
  end
end
