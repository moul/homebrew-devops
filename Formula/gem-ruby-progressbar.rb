class GemRubyProgressbar < Formula
  desc "Extremely flexible text progress bar library for Ruby."
  homepage "https://github.com/jfelchner/ruby-progressbar/"
  url "https://rubygems.org/gems/ruby-progressbar-1.8.1.gem"
  sha256 "95ded755295440de814704970d7ccaf3cb259854534f03a03a6d05918f3eece3"

  def install
    ENV["PATH"] = "#{bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    system "gem",
           "install", "ruby-progressbar",
           "--version", "1.8.1",
           "--bindir", "#{bin}",
           "--user-install"
  end
end
