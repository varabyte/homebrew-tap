# Generated with JReleaser 1.7.0 at 2023-07-05T14:35:31.683785536-07:00
class Kobweb < Formula
  desc "Set up and manage your Compose HTML app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.13/kobweb-0.9.13.zip"
  version "0.9.13"
  sha256 "a601a121324d520b50f8b04e8db46c9ffbd9db9a00d0c197bd0172571df97e19"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.13", output
  end
end
