class Rubocop < Formula
  desc "Automatic Ruby code style checking tool. Aims to enforce the community-driven Ruby Style Guide."
  homepage "https://github.com/bbatsov/rubocop/"
  url "https://rubygems.org/gems/rubocop/"
  sha256 "1781fa5192d1a65d241f7deb504fc147534bae3282c9160f4875f02c57dd490f"

  def initialize(*args)
    @name = "rubocop"
    @version = "0.48.1"
    @prefix = #{lib}/gems
  end

  def install
    system "gem", "install", name, "--version", version, "--install-dir", prefix
  end
end
