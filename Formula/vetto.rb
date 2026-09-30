class Vetto < Formula
  desc "Daemon-less, root-less kernel sandbox and policy enforcement runtime for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.12/vetto-macos-aarch64.tar.gz"
      sha256 "6bcfa70387c396b063b4dd413e3aeb3649d879260581581cd6f2ba2b965adc1d"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.12/vetto-macos-x86_64.tar.gz"
      sha256 "ab4d67f007f9ee73347fd46c286833c8d189f6e496b6a4f2bb1fbb4d349d7858"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.12/vetto-linux-aarch64.tar.gz"
      sha256 "6c33d6620f582ad570096dda47567b90ff3a2779d1c2695185262aa8cc0e733c"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.12/vetto-linux-x86_64.tar.gz"
      sha256 "8db6dd32f5e4bbe7319ccda9decdfe5238b1845128691d6b5fc1b422ac572045"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto #{version}", shell_output("#{bin}/vetto --version")
  end
end
