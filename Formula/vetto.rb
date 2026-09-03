class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.2.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.13/vetto-macos-aarch64.tar.gz"
      sha256 "6401092d62b8388809eece60b764851c596b78f3423952d699ea6f673604b493"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.13/vetto-macos-x86_64.tar.gz"
      sha256 "e23ee177650ed0e9ca6e556a21ef49d766e85dacf560916d2077d993be578bdc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.13/vetto-linux-aarch64.tar.gz"
      sha256 "7f33deb45320e3641646f1d5ac3f6178f5c98e68f232c30b9533c5ef6b8a23b9"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.13/vetto-linux-x86_64.tar.gz"
      sha256 "b8dc2b9a39e34d414d28fb39645e4ea2b7a0f536a922999093fdfcdae695c9eb"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto", shell_output("#{bin}/vetto --version")
  end
end
