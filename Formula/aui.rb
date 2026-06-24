class Aui < Formula
  desc "CLI for building, managing, and deploying AUI AI agent configurations"
  homepage "https://github.com/aui-io/aui-cli"
  url "https://registry.npmjs.org/aui-agent-builder/-/aui-agent-builder-0.4.29.tgz"
  sha256 "9ba06ee79439eed3f3b2b52ecb15de584179530db861e21c864aef986cf25800"
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
