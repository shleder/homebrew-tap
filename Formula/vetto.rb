class Vetto < Formula
  desc "Daemon-less OS sandbox and subagent security layer for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.3.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.7/vetto-macos-aarch64.tar.gz"
      sha256 "dfb1408ba6ace68d469902371f00e3ab0f6ce8d816786c24eaa3e4ed84e89fef"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.7/vetto-macos-x86_64.tar.gz"
      sha256 "0eb61452d6d7299e0c54a8e8debd1616ba0c8ea5b4a4959f9caf42c382b8fb32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.3.7/vetto-linux-aarch64.tar.gz"
      sha256 "fb52b797b6495a4d1a4feab06a63b4d7081f4cc9083a8e3ca597940d96d82e16"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.3.7/vetto-linux-x86_64.tar.gz"
      sha256 "a77ca5ef79636abfe0aae65d36b9b379205edb52ff651653787a15380b1266ce"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    system "#{bin}/vetto", "--version"
  end
end
