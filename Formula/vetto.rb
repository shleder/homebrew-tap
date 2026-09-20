class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.3/vetto-macos-aarch64.tar.gz"
      sha256 "3f54c728ae8bd2999f30f7f466d0054f49e853f427b21067e3a89e983b1f1c75"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.3/vetto-macos-x86_64.tar.gz"
      sha256 "e4d270aa44997613c8a890bf32575769a437f1043ead3fd3a0f4a83e36f35db7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.3/vetto-linux-aarch64.tar.gz"
      sha256 "fb8f7bef2ee04767b0b0d097cc2f9e8f2ffe4cd26cec4901dafe4c01d8b46fa1"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.3/vetto-linux-x86_64.tar.gz"
      sha256 "2e66e6633f4d22035b7cdac073199a955c1ddce15ad85628cc0489f9f5155024"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto", shell_output("#{bin}/vetto --version")
  end
end
