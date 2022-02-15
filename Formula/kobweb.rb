# Generated with JReleaser 1.0.0-M1 at 2022-02-15T15:26:48.508797-08:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.6/kobweb-0.9.6.zip"
  version "0.9.6"
  sha256 "3254552f86465519c62d14b8ad86e341f68462a8f028bdf17539df5a95fcd13a"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.6", output
  end
end
