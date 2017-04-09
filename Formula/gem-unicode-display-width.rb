class GemUnicodeDisplayWidth < Formula
  desc "Determines the monospace display width of a string."
  homepage "https://github.com/janlelis/unicode-display_width/"
  url "https://rubygems.org/gems/unicode-display_width-1.2.0.gem"
  sha256 "2414c86d929be487a93c731daf4b35a937464c705c2594ab9553022b61d88668"

  def install
    ENV["PATH"] = "#{bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    system "gem",
           "install", "unicode-display_width",
           "--version", "1.2.0",
           "--bindir", "#{bin}",
           "--user-install"
  end
end
