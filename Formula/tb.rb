# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Tb < Formula
  desc "a CLI for running TouchBistro services on a development machine"
  homepage ""
  version "2.3.13"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TouchBistro/tb/releases/download/2.3.13/tb_2.3.13_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "7f203505994ebd8bee05ff9bd30bc3512398065c1cf535e18d75b42ef47a4d73"
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
