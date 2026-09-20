class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.3.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.4/vetto-macos-aarch64.tar.gz"
      sha256 "fbae7e4db70f5e86a923e058c052fd067c66bf8de04b94cc3349f8436e024b48"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.4/vetto-macos-x86_64.tar.gz"
      sha256 "a1db8d6acbdfca18d345812cd5548a9d39a46e59ecd359315b93ee69ddfa330c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.4/vetto-linux-aarch64.tar.gz"
      sha256 "cecc303723e0c367957e418eb2a952d3a1670c2bf894c762c1509ff497f25fb8"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.4/vetto-linux-x86_64.tar.gz"
      sha256 "540532959247bb8c6ad8300e659df67953f0246d34cbbb0cd9475602b09238ad"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
