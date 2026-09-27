class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.3/vetto-macos-aarch64.tar.gz"
      sha256 "62b0629b5426aa213590ca5409d7d8eaa0b6f3d4ed8766070e0b9354ee1f4f52"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.3/vetto-macos-x86_64.tar.gz"
      sha256 "dfb8618abf48e607ef11fe2ce788aebc1873afe655e929b1c9ea355ffbdabad2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.3/vetto-linux-aarch64.tar.gz"
      sha256 "9f89fc6b55a9c20a713d84d21eecfad7b60c60f925dab59e247899616f76e40a"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.3/vetto-linux-x86_64.tar.gz"
      sha256 "f70917dde18eb7c484023f4f5cfa06cf082e3a03b8d2d1a3f17bc7abac27b854"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
