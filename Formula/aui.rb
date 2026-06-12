class Aui < Formula
  desc "CLI for building, managing, and deploying AUI AI agent configurations"
  homepage "https://github.com/aui-io/aui-cli"
  url "https://registry.npmjs.org/aui-agent-builder/-/aui-agent-builder-0.3.171.tgz"
  sha256 "dba28b9df335129c7e3fc640376c8010380f33d0619173cdbb6461dff830cbd9"
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
