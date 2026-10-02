class Vetto < Formula
  desc "Daemon-less, root-less kernel sandbox and policy enforcement runtime for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.15/vetto-macos-aarch64.tar.gz"
      sha256 "526551b32a3a3e5f6761838e9bc5bc8dacf104ed805d5871ed25be68e33d6194"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.15/vetto-macos-x86_64.tar.gz"
      sha256 "9f0d1886bc606a6e8f330f2b09acc697a1c9fab11da3bddf5de014604a1137c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.15/vetto-linux-aarch64.tar.gz"
      sha256 "76d8fe0491b30d1aa277c62d029a6a06cb233937200db10aee0c221e409e78d7"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.15/vetto-linux-x86_64.tar.gz"
      sha256 "42b63f14c7bb8cfedd632e6a0c69d176df2e611d3f1f953f4c6a78a22292a21b"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto #{version}", shell_output("#{bin}/vetto --version")
  end
end
