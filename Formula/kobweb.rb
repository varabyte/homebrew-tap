# Generated with JReleaser 1.14.0 at 2024-09-12T04:04:38.804158Z

class Kobweb < Formula
  desc "Set up and manage your Kobweb (Compose HTML) app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.16/kobweb-0.9.16.zip"
  version "0.9.16"
  sha256 "49e3de5d392ebb113e87fcaab89ffd9cf4982e9c0c8316a579ae9178a69b5789"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.16", output
  end
end
