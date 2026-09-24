class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.4.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.4.5/vetto-macos-aarch64.tar.gz"
      sha256 "65998cd140a0f668ec0ce84a75ba9488d39663c4d0d5c66d107addbc90aab323"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.4.5/vetto-macos-x86_64.tar.gz"
      sha256 "79a739a8028256c52959f92f8fd398b48e9859bc2d33351fc4f77e57c6f56709"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.4.5/vetto-linux-aarch64.tar.gz"
      sha256 "e9b6698a299bf10b3d0bb9fc72833c9bdffb66a60dd12ec584434fa91e087b1b"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.4.5/vetto-linux-x86_64.tar.gz"
      sha256 "9be03166d4f481e8e8520410c2b8423d56fecb6ee43e47a89507a06225d58b43"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
