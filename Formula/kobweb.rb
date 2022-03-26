# Generated with JReleaser 1.0.0-M2 at 2022-03-26T09:45:39.743146-07:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.8/kobweb-0.9.8.zip"
  version "0.9.8"
  sha256 "91d282699f150ee916191815192972f9d07ec04a3f4fb1efb07554c0d47485cf"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.8", output
  end
end
