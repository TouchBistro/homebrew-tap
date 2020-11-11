# This file was generated by GoReleaser. DO NOT EDIT.
class Tb < Formula
  desc "a CLI for running services on a development machine"
  homepage ""
  version "3.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/TouchBistro/tb/releases/download/3.2.1/tb_3.2.1_Darwin_x86_64.tar.gz"
    sha256 "2a029bc8d7b643c1c52fae4f11ab518708c94939e21529ede024bd49b22581f6"
  elsif OS.linux?
    url "https://github.com/TouchBistro/tb/releases/download/3.2.1/tb_3.2.1_Linux_x86_64.tar.gz"
    sha256 "b6e389177fbcd5109791fac6015718c5cef9ef59bcfe72fed8bef7563d909375"
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
