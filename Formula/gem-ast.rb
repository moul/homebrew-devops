class GemAst < Formula
  desc "A library for working with Abstract Syntax Trees."
  homepage "https://github.com/whitequark/ast/"
  url "https://rubygems.org/gems/ast-2.3.0.gem"
  sha256 "15d97cf7f3430351a8663f2c5fb7591fb29f700fa28576c46c53b992e912e85e"

  def install
    system "gem",
           "install", "ast",
           "--version", "2.3.0",
           "--user-install"
  end
end
