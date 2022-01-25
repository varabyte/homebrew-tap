# Generated with JReleaser 1.0.0-M1 at 2022-01-24T20:13:54.438601-08:00
class Kobweb < Formula
  desc "Kobweb CLI provides commands to handle the tedious parts of building a Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.2/kobweb-0.9.2.zip"
  version "0.9.2"
  sha256 "12d9641b3ec085043f9021bc49febcd45dd3befc14c832a4ab725684ae9ba6b0"
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
