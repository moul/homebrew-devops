class PuppetLint < Formula
  desc "Checks your Puppet manifests against the Puppetlabs style guide and alerts you to any discrepancies."
  homepage "https://github.com/rodjek/puppet-lint"
  url "https://rubygems.org/gems/puppet-lint"
  sha256 "f7f191e8bcd8ff35744bd5197548d283ecc1e117e08b6a3f0e614cb306140d87"

  # depends_on "brew-gem"
  # depends_on "ruby"

  # def initialize(*args)
  #   @name = "puppet-lint"
  #   @version = "2.2.1"
  #   @prefix = #{prefix}
  #   super
  # end

  def install
    ENV["GEM_HOME"] = #{lib}/gems
    system "gem", "install", "puppet-lint-#{version}.gem"
    bin.install "bin/puppet-lint"
  end

  test do
    system "#{bin}/puppet-lint help"
  end
end
