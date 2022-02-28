# Generated with JReleaser 1.0.0-M2 at 2022-02-28T15:08:29.202409301-08:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.7/kobweb-0.9.7.zip"
  version "0.9.7"
  sha256 "d90539791e363cdb06e25427855b1b5b4c555521eb497922b664d14c0268114d"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.7", output
  end
end
