class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.6/vetto-macos-aarch64.tar.gz"
      sha256 "1783fd1cd50cb4ae40330b05874d31776ed5f0199de4cabefeb9912dadab2aba"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.6/vetto-macos-x86_64.tar.gz"
      sha256 "9ad5eee69178a0df717395adaf9a4c0cbe19d26d4a31954af7ab72fb55345c19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.6/vetto-linux-aarch64.tar.gz"
      sha256 "ea56ebc097f3c77bc8eb67f5b5ad7b47ebc114bfa69d841e5dcaf2a3451dfd52"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.6/vetto-linux-x86_64.tar.gz"
      sha256 "3c77125b1b775464791a0a48d05f91daaa74377298cc24974bd3755bc5efd30e"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
