class Vetto < Formula
  desc "Daemon-less, root-less kernel sandbox and policy enforcement runtime for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.5.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.7/vetto-macos-aarch64.tar.gz"
      sha256 "cc534d5e04953227297e55a1dfb0e84830915c48ec89b04a37175dcf91a13cf5"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.7/vetto-macos-x86_64.tar.gz"
      sha256 "324d2d3225cb6bf869dac22090ea604cae093d8d06f8ee498bd5384384455092"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.5.7/vetto-linux-aarch64.tar.gz"
      sha256 "b77b20660cbb5dd92d0a6ba46668e81c46bcc9db30b36ad4c37412d9f03c9595"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.5.7/vetto-linux-x86_64.tar.gz"
      sha256 "fbf67e7d57c4cc405e70b79c92e2e27b6857dd90870ab93706e1506a34c9d438"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto #{version}", shell_output("#{bin}/vetto --version")
  end
end
