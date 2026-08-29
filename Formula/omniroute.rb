class Omniroute < Formula
  desc "Unified AI router with 160+ providers, compression, fallback, MCP/A2A"
  homepage "https://omniroute.online"
  url "https://registry.npmjs.org/omniroute/-/omniroute-3.8.50.tgz"
  sha256 "738c58af1faae8c57eb643a939d1191f8d7e083d9295ef61687d2bff04878c29"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  service do
    run [opt_bin/"omniroute"]
    keep_alive true
    log_path var/"log/omniroute.log"
    error_log_path var/"log/omniroute.log"
    working_dir var/"omniroute"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omniroute --version")
  end
end
