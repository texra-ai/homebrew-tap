class Texra < Formula
  desc "AI-powered LaTeX research assistant for the terminal"
  homepage "https://texra.ai"
  url "https://registry.npmjs.org/@texra-ai/cli/-/cli-0.40.5.tgz"
  sha256 "9945bda7983c1dfbaaabe0d8d0efaa0c9f71514ea8b15f1c9a6aec95dbe7ad69"
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
