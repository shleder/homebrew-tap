class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.2.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.7/vetto-macos-aarch64.tar.gz"
      sha256 "894fcfe292fd5ed34a421fccb529cc229a6b7df0d06e923f4fc8f9f3c69a60b4"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.7/vetto-macos-x86_64.tar.gz"
      sha256 "260b3f0880fad70e36b2a04b0f02cb4aef03fd6888bb4b29f87056833fc5c5a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.7/vetto-linux-aarch64.tar.gz"
      sha256 "0ac29fa455d3760d67de08aafd172fde6bf06ef892544423541d67ec81794eaa"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.7/vetto-linux-x86_64.tar.gz"
      sha256 "e09b6c7ad91e506373b85ac0b555966b4e3010e48312f5fb37208a1882abc381"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto", shell_output("#{bin}/vetto --version")
  end
end
