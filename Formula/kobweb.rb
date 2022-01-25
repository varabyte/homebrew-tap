# Generated with JReleaser 1.0.0-M1 at 2022-01-24T19:54:40.608492-08:00
class Kobweb < Formula
  desc "Kobweb CLI provides commands to handle the tedious parts of building a Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-0.9.2/kobweb-0.9.2.zip"
  version "0.9.2"
  sha256 "38fd041427bffa943458cb80dc68425dc6dc5f7a0686386a3fbfe435c40d8f29"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb version")
    assert_match "0.9.2", output
  end
end
