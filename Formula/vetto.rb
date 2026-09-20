class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.3.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.12/vetto-macos-aarch64.tar.gz"
      sha256 "f21c84bfb6b89d864f7f32adff81d3e5150b94cf4b5e9db9cdc9490e4350e978"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.12/vetto-macos-x86_64.tar.gz"
      sha256 "4a977dbc467088423eabdaf7137d2aadd0a7ab0ca5fecc127672de8928aff866"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.12/vetto-linux-aarch64.tar.gz"
      sha256 "ac563a3372ddf603267ad2ef3321462503505063b17bf54b1a04bcc8b2b7caa3"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.12/vetto-linux-x86_64.tar.gz"
      sha256 "a4f61c09f807e52c3c43c695f8f79d06e559b545d3ae3cc00f1e60b93e1a03ec"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
