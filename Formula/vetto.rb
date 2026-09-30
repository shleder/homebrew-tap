class Vetto < Formula
  desc "Daemon-less, root-less kernel sandbox and policy enforcement runtime for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.13/vetto-macos-aarch64.tar.gz"
      sha256 "bcf23bfb6fcacdaa9b91e9727496f41ff05796ab018f5aaf0cddcd3fe1eb5117"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.13/vetto-macos-x86_64.tar.gz"
      sha256 "b0f1e5a53bbb2d179205b0a04bc13a994af814b4660ae64a8a8d1f10d5a148a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.13/vetto-linux-aarch64.tar.gz"
      sha256 "fa7cccf9fe14f2d203928f74b50e4de7c32df8efabfae3adac723e55a8aea334"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.13/vetto-linux-x86_64.tar.gz"
      sha256 "f78ef338acb34f8e7b9498d440a26d453968ab45450219ba3422d48e39fda3df"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto #{version}", shell_output("#{bin}/vetto --version")
  end
end
