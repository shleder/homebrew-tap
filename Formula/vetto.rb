class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.4.2/vetto-macos-aarch64.tar.gz"
      sha256 "803bb5d0b9d65cc8e1562cc920a7a277fab247dd9894e9564aa4d4f581526e93"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.4.2/vetto-macos-x86_64.tar.gz"
      sha256 "a5a06354cd7579777a95f85a071d2ad6f7aef325a8f25b71fa3bb47d184db9e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.4.2/vetto-linux-aarch64.tar.gz"
      sha256 "ff3413f2acfb92bf0a5aa838bbbd6222164545615b520a67b21a6bc7f2ef442a"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.4.2/vetto-linux-x86_64.tar.gz"
      sha256 "cc259d55f48b2685eea7a69d88b6f62881a7b66795b853130e7476ab22a42acc"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
