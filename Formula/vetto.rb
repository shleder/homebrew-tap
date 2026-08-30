class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.2.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.8/vetto-macos-aarch64.tar.gz"
      sha256 "e4558e2ed861d51ae43315eb311376c0f75c6932bc0ad56a4b749f66c8877f2b"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.8/vetto-macos-x86_64.tar.gz"
      sha256 "ed85bf08db369286a64e6c3cb5d4405eba79115e7dcb354149b0a552abb49da2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.8/vetto-linux-aarch64.tar.gz"
      sha256 "1c1f66271f312d13873f734f16a8fafeb67c9897061c84e512a023bcab79d7f8"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.8/vetto-linux-x86_64.tar.gz"
      sha256 "10e9302ac023df8f44ba74c4507391b5cd159d7126c51aa1f84ed3b97edb1b15"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto", shell_output("#{bin}/vetto --version")
  end
end
