class GemRainbow < Formula
  desc "Colorize printed text on ANSI terminals."
  homepage "https://github.com/sickill/rainbow/"
  url "https://rubygems.org/gems/rainbow-2.2.1.gem"
  sha256 "31a378946de07c36952d68f59905727d5e188ce9a12a38ba346296e81f483f3b"

  def install
    ENV["PATH"] = "#{bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    system "gem",
           "install", "rainbow",
           "--version", "2.2.1",
           "--bindir", "#{bin}",
           "--user-install"
  end
end
