class PuppetLint < Formula
  desc "Checks your Puppet manifests against the Puppetlabs style guide and alerts you to any discrepancies."
  homepage "https://github.com/rodjek/puppet-lint"
  url "https://rubygems.org/gems/puppet-lint"
  sha256 "f7f191e8bcd8ff35744bd5197548d283ecc1e117e08b6a3f0e614cb306140d87"

  def initialize(*args)
    @name = "puppet-lint"
    @version = "2.2.1"
    super
  end

  def install
    system "gem", "install", name, "--version", version, "--install-dir", prefix
  end
end
