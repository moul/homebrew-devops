class Rubocop < Formula
  desc "Automatic Ruby code style checking tool."
  homepage "https://github.com/bbatsov/rubocop/"
  url "https://rubygems.org/gems/rubocop-0.48.1.gem"
  sha256 "002f6b49013abdc05c68ae75433c48d3ee7f1baa70674d60bf1cc310e210fbd7"

  depends_on "brew-gem"

  def install
    system "brew-gem", "install", "rubocop"
  end

  test do
    system "#{bin}/rubocop --help"
  end
end
