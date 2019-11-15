# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Tb < Formula
  desc "a CLI for running TouchBistro services on a development machine"
  homepage ""
  version "1.9.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TouchBistro/tb/releases/download/1.9.0/tb_1.9.0_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "279024a093498f748b5b34b7ed5412400396a17fa5468342e9cc80234d6fb632"
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
