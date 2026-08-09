class Texra < Formula
  desc "AI-powered LaTeX research assistant for the terminal"
  homepage "https://texra.ai"
  url "https://registry.npmjs.org/@texra-ai/cli/-/cli-0.40.1.tgz"
  sha256 "d61352a24d56c9cb18ef19428bf913ab86d7ddac3e00d742310772647a600ca8"
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
