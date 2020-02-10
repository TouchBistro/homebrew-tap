# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Tb < Formula
  desc "a CLI for running TouchBistro services on a development machine"
  homepage ""
  version "2.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TouchBistro/tb/releases/download/2.1.2/tb_2.1.2_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "591fc578e7d6aedfeeb21de2f108fcddd0b3b8a0136ebcaed02f61c8aec72950"
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
