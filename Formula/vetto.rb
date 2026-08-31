class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.2.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.9/vetto-macos-aarch64.tar.gz"
      sha256 "6cc90d8198670233466442cd805aabac944ab92def0d9b0d8e6feb06dbfe74c8"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.9/vetto-macos-x86_64.tar.gz"
      sha256 "d62942cc593a64129eea18af730e94f020ac8269191b2ed2e3642b96b34a1f7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.9/vetto-linux-aarch64.tar.gz"
      sha256 "10d8f7ff60f0f2b651a8fb2c9e2729eeea50481a2cf7c123f757e8b925054476"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.9/vetto-linux-x86_64.tar.gz"
      sha256 "5f7c8f1ad975f28336ae39b610d855ef71b90240ab93247b13137ccb081c8861"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto", shell_output("#{bin}/vetto --version")
  end
end
