class Aui < Formula
  desc "CLI for building, managing, and deploying AUI AI agent configurations"
  homepage "https://github.com/aui-io/aui-cli"
  url "https://registry.npmjs.org/aui-agent-builder/-/aui-agent-builder-0.3.145.tgz"
  sha256 "6caf24c9d5e4d67ff4e6c6b39acd79b9aadc8b70c1194600ab41ac94f69a59cd"
  version "0.3.145"
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
