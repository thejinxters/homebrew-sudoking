class Sudoking < Formula
  desc "Co-process for iTerm to wrap a password manager cli"
  homepage "https://github.com/thejinxters/SudoKing"
  url "https://github.com/thejinxters/SudoKing/releases/download/0.0.4/sudoking-0.0.4.tar.gz"
  sha256 "90e8dd7a1ead92d4e51782f33c286c67f0691d9a639a560d636f3f90f7711fbb"

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
