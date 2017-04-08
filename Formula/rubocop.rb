class Rubocop < Formula
  desc "Automatic Ruby code style checking tool. Aims to enforce the community-driven Ruby Style Guide."
  homepage "https://github.com/bbatsov/rubocop"
  url "https://rubygems.org/gems/rubocop"
  sha256 "002f6b49013abdc05c68ae75433c48d3ee7f1baa70674d60bf1cc310e210fbd7"

  def initialize(*args)
    @name = "rubocop"
    @version = "1.48.1"
    super
  end

  def install
    system "gem", "install", name, "--version", version, "--install-dir", prefix
  end
end
