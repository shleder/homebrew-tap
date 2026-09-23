class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.4.1/vetto-macos-aarch64.tar.gz"
      sha256 "4ba3f5dc53cc2b748fd12a52e58b5af934dab6f3cb9096a994f19aa67e223131"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.4.1/vetto-macos-x86_64.tar.gz"
      sha256 "4e59327c4d90989fa7df10e206b9dc709f55dca0fd578d438590757233d0c3d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.4.1/vetto-linux-aarch64.tar.gz"
      sha256 "2382330d646ddddd03de57dfb368bc44799963d9ef1f6d89207a443f83387cfb"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.4.1/vetto-linux-x86_64.tar.gz"
      sha256 "aaf70d63f258ed463167af182ead7f3c7baa707b93615f050c8355bb548fb2ba"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
