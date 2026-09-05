class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.2.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.15/vetto-macos-aarch64.tar.gz"
      sha256 "3587987a7d058ae93c39ed41fb88c9755d0db47a729b5cbe2ef3a2c3f6a0231f"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.15/vetto-macos-x86_64.tar.gz"
      sha256 "4032d78244bd65acd36d2573b532a593719c379945ac10ef059dd3b8a99000cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.2.15/vetto-linux-aarch64.tar.gz"
      sha256 "d23c84a50b0d3f0a79b1bc1f5e283ef89cb99370ca546c603f735735f40ce5ad"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.2.15/vetto-linux-x86_64.tar.gz"
      sha256 "b95e789a7d8bb82d37bcfb7e2c90ad6dcd7525427223694d771294aa983020d4"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto", shell_output("#{bin}/vetto --version")
  end
end
