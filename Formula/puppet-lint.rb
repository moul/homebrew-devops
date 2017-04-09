class PuppetLint < Formula
  desc "Checks your Puppet manifests against the Puppetlabs style guide and alerts you to any discrepancies."
  version "2.2.1"
  homepage "https://github.com/rodjek/puppet-lint"
  url "https://rubygems.org/gems/puppet-lint-2.2.1.gem"
  sha256 "f7f191e8bcd8ff35744bd5197548d283ecc1e117e08b6a3f0e614cb306140d87"

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
