class Texra < Formula
  desc "AI-powered LaTeX research assistant for the terminal"
  homepage "https://texra.ai"
  url "https://registry.npmjs.org/@texra-ai/cli/-/cli-0.40.10.tgz"
  sha256 "6bed9fef0a850fd5a1d0df800c3af726fff1bb4568a9e96bb2f9900efbf5fc26"
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
