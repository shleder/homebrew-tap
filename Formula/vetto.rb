class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.4/vetto-macos-aarch64.tar.gz"
      sha256 "5b3de96c1d329bb872c7f33234031fb45bc62a92c8ec603ce0f63b89d3a02510"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.4/vetto-macos-x86_64.tar.gz"
      sha256 "725093f4af3acb14da114cc962c909a44d9aba5789cd76a0c9febfc833243855"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.4/vetto-linux-aarch64.tar.gz"
      sha256 "f777b1fbad988fc1a84d0749bed1d62cee58cdc980e369d7f44bfa514cb855bc"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.4/vetto-linux-x86_64.tar.gz"
      sha256 "fbcb23b9455263b80b2a5455a2d9597c4e0229a2e9dcdde6e3d81b64667c21cf"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
