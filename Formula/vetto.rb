class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.3.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.6/vetto-macos-aarch64.tar.gz"
      sha256 "ced85d4d89cdb919bf87ec04b995b76f9d6257abed37128ee20d369d83102b17"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.6/vetto-macos-x86_64.tar.gz"
      sha256 "e616549047f1b6c16d8132581386c89b150efa08ca4e87b3ccdfec20d9454a12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.6/vetto-linux-aarch64.tar.gz"
      sha256 "2a32e6169c023840025cbdc83e77dab7c36b60d538a20e45dbf21274f9ce60f2"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.6/vetto-linux-x86_64.tar.gz"
      sha256 "f003a96c4da607f183c82e1d0718063bb6bb9d984af2bcc49fb7fd785b88f691"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
