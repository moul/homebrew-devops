class GemParser < Formula
  desc "A Ruby parser written in pure Ruby."
  homepage "https://github.com/whitequark/parser"
  url "https://rubygems.org/gems/parser-2.4.0.0.gem"
  sha256 "98a50996e8277c1215c4a193cdd3e0d44fd5810db14251b0774273a1d074198c"

  depends_on "gem-ast"

  def install
    ENV["PATH"] = "#{bin}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    system "gem",
           "install", "parser",
           "--version", "2.4.0.0",
           "--bindir", "#{bin}",
           "--user-install"
  end
end
