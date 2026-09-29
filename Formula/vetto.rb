class Vetto < Formula
  desc "Daemon-less, root-less kernel sandbox and policy enforcement runtime for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.9/vetto-macos-aarch64.tar.gz"
      sha256 "6a96f45ca3e2650f3f06f7a3ccb2288ac310b51072aca611d6c49200f0963eb2"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.9/vetto-macos-x86_64.tar.gz"
      sha256 "8f87917eea65ce7888e8f769114c9b0e24bd6a6908ee09b68c3ae6f85205165d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.9/vetto-linux-aarch64.tar.gz"
      sha256 "4b2c9ef2527608ae54920c558f4537659550b3949d56fa88bf65cdd9380c72ad"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.9/vetto-linux-x86_64.tar.gz"
      sha256 "41d423da1b32489b90b4506a4b55437eca48f4223cfdda667982d15a0120e5c2"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto #{version}", shell_output("#{bin}/vetto --version")
  end
end
