class Sudoking < Formula
  desc "Co-process for iTerm to wrap a password manager cli"
  homepage "https://github.com/thejinxters/SudoKing"
  url "https://github.com/thejinxters/SudoKing/releases/download/0.0.2/sudoking-0.0.2.tar.gz"
  sha256 "89002d57ede4405efc5e2ddd5c01581aa68b0f9706ddd299568e3aed1b2cb647"

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
