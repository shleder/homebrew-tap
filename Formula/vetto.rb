class Vetto < Formula
  desc "Daemon-less, root-less kernel sandbox and policy enforcement runtime for AI coding agents"
  homepage "https://github.com/shleder/vetto"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.6.2/vetto-macos-aarch64.tar.gz"
      sha256 "d428cf1d90110d42945dc37ce781560ff4e39efcaab197f3d1fa077669351ee3"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.6.2/vetto-macos-x86_64.tar.gz"
      sha256 "2a84220d782de55c07ebaf946ec24bccc493393d1717c6a24babb6350f82d097"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shleder/vetto/releases/download/v0.6.2/vetto-linux-aarch64.tar.gz"
      sha256 "a04b689f200b4aa83ea7f1a9116f3388ff5e58baae228265ba0a97807cc7b199"
    else
      url "https://github.com/shleder/vetto/releases/download/v0.6.2/vetto-linux-x86_64.tar.gz"
      sha256 "54ee12300a64b604ea9334e2859f7dd250bff0e7ad9869f93090e0c530e024bd"
    end
  end

  def install
    bin.install "vetto"
  end

  test do
    assert_match "vetto #{version}", shell_output("#{bin}/vetto --version")
  end
end
