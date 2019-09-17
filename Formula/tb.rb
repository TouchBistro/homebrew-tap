# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Tb < Formula
  desc "a CLI for running TouchBistro services on a development machine"
  homepage ""
  version "1.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TouchBistro/tb/releases/download/1.2.1/tb_1.2.1_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "0fc20c8113a0fc6461969899691377c693887c9623ba9495d64692ddd7d99632"
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
