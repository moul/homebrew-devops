class GemPowerpack < Formula
  desc "Some useful extensions to the core Ruby classes."
  homepage "https://github.com/bbatsov/powerpack/"
  url "https://rubygems.org/gems/powerpack-0.1.1.gem"
  sha256 "83a81d0406f1628adc61b579689dc4509b30409a00fa4ca8f47ff212a91bd6ba"

  def install
    ENV["PATH"] = "#{bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    system "gem",
           "install", "powerpack",
           "--version", "0.1.1",
           "--bindir", "#{bin}",
           "--user-install"
  end
end
