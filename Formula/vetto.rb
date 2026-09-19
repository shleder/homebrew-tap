class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.1/vetto-macos-aarch64.tar.gz"
      sha256 "ef6c86d85256d4fbc6ccfbf87816065eac62c1b230a1f5af6c11ef895da06cd6"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.1/vetto-macos-x86_64.tar.gz"
      sha256 "64fb069c1323d6f798d0f74aa94ec526df5c1cc200997d05ede82fbd870b344d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.1/vetto-linux-aarch64.tar.gz"
      sha256 "3b8775a74083f5b721b61f4433adf238e25eab1481f800e59f6edb8490488862"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.1/vetto-linux-x86_64.tar.gz"
      sha256 "5ec1eddb703e3cbe2e2e2fb153d5ef56057e6847ab26dffb010110f0a6d2c6de"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto", shell_output("#{bin}/vetto --version")
  end
end