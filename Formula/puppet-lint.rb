class PuppetLint < Formula
  desc "Checks your Puppet manifests against the Puppetlabs style guide and alerts you to any discrepancies."
  version "2.2.1"
  homepage "https://github.com/rodjek/puppet-lint"
  url "https://rubygems.org/gems/puppet-lint"
  sha256 "7ce1c247af4e20813638d393307a48dc7e221bcb81a2061f413da0bb5b79c26c"

  depends_on "brew-gem" => :build

  def initialize(*args)
    @name = "puppet-lint"
    @version = "2.2.1"
    @prefix = #{prefix}
    super
  end

  def install
    system "gem", "install", name, "--version", version, "--install-dir", prefix
  end
end
