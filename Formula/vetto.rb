class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.3.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.11/vetto-macos-aarch64.tar.gz"
      sha256 "36780b9c0eb890ee8128990acc0489ff1e10ae4736677c3ce04500daf1373ae5"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.11/vetto-macos-x86_64.tar.gz"
      sha256 "036dd487565af3c187607eb6398b7a32c47dc529514945495383c32be044f333"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.11/vetto-linux-aarch64.tar.gz"
      sha256 "8c630f2fa5858ffa3c2dced516e1144de96a4d330abd206edba3b9979bdeafe4"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.11/vetto-linux-x86_64.tar.gz"
      sha256 "aa5ad9b272c466bdd27782363dfebbb76c782041f845339887da363a9c8f391b"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
