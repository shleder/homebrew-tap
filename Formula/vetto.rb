class Vetto < Formula
  desc "Daemon-less, root-less kernel sandbox and policy enforcement runtime for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.11/vetto-macos-aarch64.tar.gz"
      sha256 "8dfcd7657df76e172689e04978ceee9b0924a950ccaaa0aec371a8536756eee7"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.11/vetto-macos-x86_64.tar.gz"
      sha256 "1d704c7654e29672fa0e84c3d3bc56000d582ef9f6842858ec8c65193b630e41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.11/vetto-linux-aarch64.tar.gz"
      sha256 "ea1a0eb9e0f95dfda16b11acd537e9b15406910e61aa42f1c1cefb85ab70e4ee"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.11/vetto-linux-x86_64.tar.gz"
      sha256 "032d2168aa585efdec9558b4d87c57d4b82f2b9751341f53aaf1efb65bdfc15e"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto #{version}", shell_output("#{bin}/vetto --version")
  end
end
