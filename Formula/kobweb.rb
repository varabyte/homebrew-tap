# Generated with JReleaser 1.5.0 at 2023-04-11T14:52:52.549170879-07:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.12/kobweb-0.9.12.zip"
  version "0.9.12"
  sha256 "a7a8fe845f14cb629f410d29521dad7b811d1866d762a65a55e61831c198b92b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.12", output
  end
end
