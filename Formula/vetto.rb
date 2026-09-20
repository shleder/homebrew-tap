class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.3.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.5/vetto-macos-aarch64.tar.gz"
      sha256 "254ae15dd0722254db6c5e4c7d62d358a22a3dfda364f5100238ae16644a88d7"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.5/vetto-macos-x86_64.tar.gz"
      sha256 "11dc1479cc3f59c6da0dc28067958be09bcf8478db6561691442b953653b540d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.5/vetto-linux-aarch64.tar.gz"
      sha256 "546f9f839f60d9292cc5888f13c15e18bcaee03d49544d31958ec9cb07eae484"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.5/vetto-linux-x86_64.tar.gz"
      sha256 "5f35c086e97316f65bf343091353faac3f9640809c2ba082bfd04c171c0fc77a"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
