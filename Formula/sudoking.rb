class Sudoking < Formula
  desc "Co-process for iTerm to wrap a password manager cli"
  homepage "https://github.com/thejinxters/SudoKing"
  url "https://github.com/thejinxters/SudoKing/releases/download/0.0.3/sudoking-0.0.3.tar.gz"
  sha256 "cc81c6f3dce3dfb0230541b84b3298e8f4b5049137bae14dd79717371e2fb845"

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
