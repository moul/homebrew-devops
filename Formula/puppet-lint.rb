class PuppetLint < Formula
  desc "Checks your Puppet manifests against the Puppetlabs style guide and alerts you to any discrepancies."
  homepage "https://github.com/rodjek/puppet-lint"
  url "https://rubygems.org/gems/puppet-lint-2.2.1.gem"
  sha256 "f7f191e8bcd8ff35744bd5197548d283ecc1e117e08b6a3f0e614cb306140d87"
  # head 'https://github.com/rodjek/puppet-lint', :using => :git, :tag => '2.2.1'

  depends_on "brew-gem"
  # depends_on "ruby"

  # def initialize(*args)
  #   @name = "puppet-lint"
  #   @version = "2.2.1"
  #   @prefix = #{prefix}
  #   super
  # end

  def install
    # ENV["GEM_HOME"] = libexec
    # system "gem", "install", name, "--version", version, "--install-dir", prefix
    # system "gem", "build", "puppet-lint.gemspec"
    system "gem", "install", "puppet-lint-#{version}.gem"
  end
end
