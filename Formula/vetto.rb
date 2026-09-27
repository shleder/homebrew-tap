class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.5/vetto-macos-aarch64.tar.gz"
      sha256 "ad05345173f091bcfec1d139ca060f5388f7cc527529f706c1cfbaeb0b33a0ab"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.5/vetto-macos-x86_64.tar.gz"
      sha256 "aa071f5145f2fa62371252d1074b1e15c018fae50d6291dcd21604b094f26415"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.5/vetto-linux-aarch64.tar.gz"
      sha256 "e33b9a81692cc71c6f77b8a182fdd5c957e5e077f6fab1c8d1fa728bac51b514"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.5/vetto-linux-x86_64.tar.gz"
      sha256 "cf850066aab19821a4614827ac7197e4344ff1e03cb2e41aeec38b53f9cae1f3"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
