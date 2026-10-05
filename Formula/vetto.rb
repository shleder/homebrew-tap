class Vetto < Formula
  desc "Daemon-less, root-less kernel sandbox and policy enforcement runtime for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.6.0/vetto-macos-aarch64.tar.gz"
      sha256 "d910c81edb7b6972e73d7565d1707535701a62eecd0f51c16271d0aef3839440"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.6.0/vetto-macos-x86_64.tar.gz"
      sha256 "f3d6dd6a4e67e421c385996338b0ee29d5037515c09f19b101ef21ec72e24ba5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.6.0/vetto-linux-aarch64.tar.gz"
      sha256 "f87113cd2d195cadcbd3f0fe3289412d0142f5e1de605294a657f8fd93c88bba"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.6.0/vetto-linux-x86_64.tar.gz"
      sha256 "cee4364da70db83ad3a1bcfe97cc7e4e74ebe93eb445ca05a5ebb7e3fa376ca4"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto #{version}", shell_output("#{bin}/vetto --version")
  end
end
