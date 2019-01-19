class Sudoking < Formula
  desc "Co-process for iTerm to wrap a password manager cli"
  homepage "https://github.com/thejinxters/SudoKing"
  url "https://github.com/thejinxters/SudoKing/releases/download/0.0.1/sudoking-0.0.1.tar.gz"
  sha256 "b9264ec72102d5929dea1e53f3de0c8fa4f524e25434a016f64f5c1bc72cd736"

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_exec_script (libexec/"sudoking")
  end

  test do
    system "false"
  end
end
