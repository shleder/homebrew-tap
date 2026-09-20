class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.3.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.13/vetto-macos-aarch64.tar.gz"
      sha256 "ef78760d61f73e554fd132283b2c2d0bf85a0ca9216f5967ddea29289568d778"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.13/vetto-macos-x86_64.tar.gz"
      sha256 "a9ff11c32c22c5c99ce5001d40d62ff6a000d36068aefb5af9361fd51a343e09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.13/vetto-linux-aarch64.tar.gz"
      sha256 "3f4086d689068db8c8c70bf78ffa4f1e78f11c2052fedf3da2eb35f43a7c33b5"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.13/vetto-linux-x86_64.tar.gz"
      sha256 "077fcce8a4b5e568617c4457ea8b2182a11eff44677a66d09d80035fc07de234"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
