class Aui < Formula
  desc "CLI for building, managing, and deploying AUI AI agent configurations"
  homepage "https://github.com/aui-io/aui-cli"
  url "https://registry.npmjs.org/aui-agent-builder/-/aui-agent-builder-0.3.158.tgz"
  sha256 "8435201a3f0b444830437535a032747c15e8389532c98ceaa05204e7268f8f89"
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
