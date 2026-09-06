class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.2.18"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.18/vetto-macos-aarch64.tar.gz"
      sha256 "4ce932cf26fef2385c6778404c1c85774dbac4c66b0cc1f858652048de79f15d"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.18/vetto-macos-x86_64.tar.gz"
      sha256 "6c3a13c158622798093225c119c1cc5ccfb29ebc3bf913cdf6276ca24a6cde3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.18/vetto-linux-aarch64.tar.gz"
      sha256 "1059ecfdb0df88b06bdfb0972c2c240ef02cb802cf4e62512715be62543bfaad"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.18/vetto-linux-x86_64.tar.gz"
      sha256 "410871e52d63cf17c613a6ed266488a20b976ae20a37b60b042b29b773da4216"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto", shell_output("#{bin}/vetto --version")
  end
end
