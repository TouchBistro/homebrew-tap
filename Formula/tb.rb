# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Tb < Formula
  desc "a CLI for running TouchBistro services on a development machine"
  homepage ""
  version "2.3.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TouchBistro/tb/releases/download/2.3.3/tb_2.3.3_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "f9b02a4b63defe133d59f9bee10c523b34a2d9aa9fbd9d720659b31c10e3ad9a"
  elsif OS.linux?
  end

  def install
    bin.install "tb"
    bash_completion.install "dist/tb.bash"
    zsh_completion.install "dist/_tb"
    man1.install Dir["dist/man1/*.1"]
  end

  test do
    system "#{bin}/tb --version"
  end
end
