class Vetto < Formula
  desc "Daemon-less, root-less kernel sandbox and policy enforcement runtime for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.6.0/vetto-macos-aarch64.tar.gz"
      sha256 "d910c81edb7b6972e73d756ef482705e7144e59e8e50b188c0ae4e680a653457"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.6.0/vetto-macos-x86_64.tar.gz"
      sha256 "f3d6dd6a4e67e421c3859965bbaf8b3bf2ebdd65d95d7fbf072797ff1221774b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.6.0/vetto-linux-aarch64.tar.gz"
      sha256 "f87113cd2d195cadcbd3f0fc12da970ae4ef2bc2f3473138b321c81a28a38917"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.6.0/vetto-linux-x86_64.tar.gz"
      sha256 "cee4364da70db83ad3a1bcfbe1bcfdfc299c82c61e893e35a16d80d21a221f70"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto #{version}", shell_output("#{bin}/vetto --version")
  end
end
