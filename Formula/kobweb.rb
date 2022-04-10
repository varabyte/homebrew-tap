# Generated with JReleaser 1.0.0-M2 at 2022-04-09T23:07:26.43582832-07:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.9/kobweb-0.9.9.zip"
  version "0.9.9"
  sha256 "a347b4c135d3213558d3158cbb0827e58a0fc607c1bca79952e16cb432138498"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.9", output
  end
end
