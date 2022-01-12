# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tb < Formula
  desc "a CLI for running services on a development machine"
  homepage ""
  version "3.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TouchBistro/tb/releases/download/3.6.0/tb_3.6.0_Darwin_arm64.tar.gz"
      sha256 "0e45c392f03891fe5dccb3ffee2efcaefc2c327a88ec05253a958463d9842b83"

      def install
        bin.install "tb"
        bash_completion.install "artifacts/tb.bash"
        zsh_completion.install "artifacts/_tb"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TouchBistro/tb/releases/download/3.6.0/tb_3.6.0_Darwin_x86_64.tar.gz"
      sha256 "aeb3700aade33276c5f29aaf4829ee0c46efbcf79eef9fd968fbc913ac837235"

      def install
        bin.install "tb"
        bash_completion.install "artifacts/tb.bash"
        zsh_completion.install "artifacts/_tb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TouchBistro/tb/releases/download/3.6.0/tb_3.6.0_Linux_arm64.tar.gz"
      sha256 "0b192b5cea4c71dc5a199d1382658ddb62ca07d48e383f603f9bcd8b327d0ac0"

      def install
        bin.install "tb"
        bash_completion.install "artifacts/tb.bash"
        zsh_completion.install "artifacts/_tb"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TouchBistro/tb/releases/download/3.6.0/tb_3.6.0_Linux_x86_64.tar.gz"
      sha256 "7f89b0326a6bcb90a8afb17c68aa92c5a86b3e85b2c98969662713a4a333e71d"

      def install
        bin.install "tb"
        bash_completion.install "artifacts/tb.bash"
        zsh_completion.install "artifacts/_tb"
      end
    end
  end

  test do
    system "#{bin}/tb --version"
  end
end
