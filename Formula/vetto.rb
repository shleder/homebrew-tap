class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.4.3/vetto-macos-aarch64.tar.gz"
      sha256 "936fee6372d8edc88ed7d0cb30fa66c5d99aa2b30358ac5310f8753d0917f591"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.4.3/vetto-macos-x86_64.tar.gz"
      sha256 "4459820b1ea34c3e1957ecbeb86a3f66656e399fe6e1d278ecd78975b76b8c53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.4.3/vetto-linux-aarch64.tar.gz"
      sha256 "3af219dd188f14eb270697f178e1bbe0524a399263259a65c6c41c19b1d25918"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.4.3/vetto-linux-x86_64.tar.gz"
      sha256 "4334e701edb6849b2623c70720a4f5f34e9ff6e6a162f3df7e0227a985a25bb0"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
