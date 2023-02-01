# Generated with JReleaser 1.4.0 at 2023-02-01T09:54:18.02321813-08:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.11/kobweb-0.9.11.zip"
  version "0.9.11"
  sha256 "7b1c204347b14710fffd36a05ad27a1a55a5d7abe8e5dec6f4f695f8cc296f18"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.11", output
  end
end
