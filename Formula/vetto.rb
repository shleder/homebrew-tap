class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.2/vetto-macos-aarch64.tar.gz"
      sha256 "a15eabc9debf702f9b208e104f948352bae1e7474501847223c7196a301ecd17"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.2/vetto-macos-x86_64.tar.gz"
      sha256 "304e27a5e5c3b6bebca74f2f718e5771d7fe01e6f7691288e12766618fcbb020"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.2/vetto-linux-aarch64.tar.gz"
      sha256 "9c36d1eb8b686d4fc56acc872e25ee7f6002bf0eca5ae2fb12771e5baf324ec8"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.2/vetto-linux-x86_64.tar.gz"
      sha256 "ca45999612c8e44a6cc1037b588dcefc5e040e13928b8944c60cf3b9ed73cab9"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto", shell_output("#{bin}/vetto --version")
  end
end
