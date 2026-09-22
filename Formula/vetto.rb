class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.4.0/vetto-macos-aarch64.tar.gz"
      sha256 "5687dbe2020b02ad7b0836116d940e20c236f023940bb1bc1865e1331ee3ecc2"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.4.0/vetto-macos-x86_64.tar.gz"
      sha256 "1b74bb31468bdee39a71206b4da16d0ffe0cb126eb970be6bf332ec64c234bcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.4.0/vetto-linux-aarch64.tar.gz"
      sha256 "d52099a13cfae4a6652f648ffb7a065e597707b047a3dbb86eed1f3b39b87912"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.4.0/vetto-linux-x86_64.tar.gz"
      sha256 "c9ec8885c22633cae40a57aa8cbbaeb305a10d56c57a9f9b992fc283f177a3d7"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
