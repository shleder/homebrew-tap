class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.1/vetto-macos-aarch64.tar.gz"
      sha256 "256035b13c8088ff12acc004c9970fae7f422229b670c7fec7dc84979985ff59"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.1/vetto-macos-x86_64.tar.gz"
      sha256 "fc5d59e10e5c983295a4a34159afae55fd6837ee9d29e4e6520076cee77640ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.1/vetto-linux-aarch64.tar.gz"
      sha256 "e082e4689fedea467e58a494d97efb9d201f3a2242c552174da6c2f419bfcba7"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.1/vetto-linux-x86_64.tar.gz"
      sha256 "d060551177a53e8ac0b6c26b7c2df050b580ad62c93077e37645327556911f71"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
