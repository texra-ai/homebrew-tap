class Texra < Formula
  desc "AI-powered LaTeX research assistant for the terminal"
  homepage "https://texra.ai"
  url "https://registry.npmjs.org/@texra-ai/cli/-/cli-0.39.1.tgz"
  sha256 "dd642c3637191f8b2ad83d5575cd0f6692805ce29b78066c6211cfe235095033"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/texra --version")
  end
end
