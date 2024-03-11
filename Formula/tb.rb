# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tb < Formula
  desc "a CLI for running services on a development machine"
  homepage ""
  version "3.16.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TouchBistro/tb/releases/download/3.16.1/tb_Darwin_arm64.tar.gz"
      sha256 "5d2734d5d7300d9de99172870d063aa718b88e7045a034a473441df3f9510890"

      def install
        bin.install "tb"
        bash_completion.install "artifacts/tb.bash"
        zsh_completion.install "artifacts/_tb"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TouchBistro/tb/releases/download/3.16.1/tb_Darwin_x86_64.tar.gz"
      sha256 "c1bbb8dbc8286f45ea0ac761868939db68a304bd688148d52f2da759e9351f27"

      def install
        bin.install "tb"
        bash_completion.install "artifacts/tb.bash"
        zsh_completion.install "artifacts/_tb"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TouchBistro/tb/releases/download/3.16.1/tb_Linux_arm64.tar.gz"
      sha256 "ce27ea66a466cc9413b0835e691bcc7103bf2bc9b6b100cdf6340927f8599632"

      def install
        bin.install "tb"
        bash_completion.install "artifacts/tb.bash"
        zsh_completion.install "artifacts/_tb"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TouchBistro/tb/releases/download/3.16.1/tb_Linux_x86_64.tar.gz"
      sha256 "26fb65778e124c9f39992eee650d319078d9110d3ccaa8c04544d8b7d6e59388"

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
