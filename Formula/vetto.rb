class Vetto < Formula
  desc "Daemon-less, root-less kernel sandbox and policy enforcement runtime for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.6.1/vetto-macos-aarch64.tar.gz"
      sha256 "2f7dbd2d74ee086f2e8abb3062b035795df33228dcad2c037ac055491f67d71b"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.6.1/vetto-macos-x86_64.tar.gz"
      sha256 "0a32279d28dfda364b7aae6814c67ce9af914c43bd8c206575197779c27e35aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.6.1/vetto-linux-aarch64.tar.gz"
      sha256 "1446030141081b141a86ce95570c230157ec1a0f80fb7d15e6687d4bdf415e46"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.6.1/vetto-linux-x86_64.tar.gz"
      sha256 "6eecec2b40fe5c2d77a8b8105b1f408dbaac711af42fb96159502bccc0d7819d"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto #{version}", shell_output("#{bin}/vetto --version")
  end
end
