# Generated with JReleaser 1.5.0 at 2023-04-11T14:52:52.549170879-07:00
class Kobweb < Formula
  desc "Set up and manage your Compose for Web app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb/releases/download/cli-v0.9.12/kobweb-0.9.12.zip"
  version "0.9.12"
  sha256 "7ec80af0aba3d21335fd3d0708c4a24d9cc7cf1c28ba243796cb274865dcde30"
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
