# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tb < Formula
  desc "a CLI for running services on a development machine"
  homepage ""
  version "3.17.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/TouchBistro/tb/releases/download/3.17.2/tb_Darwin_x86_64.tar.gz"
      sha256 "1191f49989a68ff82007f70f5c97053b3e492649b9897081e4ced2bf44c9e5c9"

      def install
        bin.install "tb"
        bash_completion.install "artifacts/tb.bash"
        zsh_completion.install "artifacts/_tb"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/TouchBistro/tb/releases/download/3.17.2/tb_Darwin_arm64.tar.gz"
      sha256 "07da9b29538361b81b4ac2455ba71e91ab5a6cee9521c9fb3101c734cb83c590"

      def install
        bin.install "tb"
        bash_completion.install "artifacts/tb.bash"
        zsh_completion.install "artifacts/_tb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TouchBistro/tb/releases/download/3.17.2/tb_Linux_arm64.tar.gz"
      sha256 "8d158e253af534bd8c3307a07aa8089e28b42baf4c6db7f81013133996fcad71"

      def install
        bin.install "tb"
        bash_completion.install "artifacts/tb.bash"
        zsh_completion.install "artifacts/_tb"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TouchBistro/tb/releases/download/3.17.2/tb_Linux_x86_64.tar.gz"
      sha256 "d3287ddabbe4308bd3fdaf9273d4c90d38d59e8f9afe4fe3a47dd1fc36bd0a37"

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
