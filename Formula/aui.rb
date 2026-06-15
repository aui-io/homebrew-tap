class Aui < Formula
  desc "CLI for building, managing, and deploying AUI AI agent configurations"
  homepage "https://github.com/aui-io/aui-cli"
  url "https://registry.npmjs.org/aui-agent-builder/-/aui-agent-builder-0.4.3.tgz"
  sha256 "100087b77f8356d69bb59fe03acc723778c04ecb881e4f61cff91572356c5e15"
  license "SEE LICENSE IN LICENSE"

  depends_on "node"
  depends_on "git"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aui --version").strip
  end
end
