class PuppetLint < Formula
  desc "Checks your Puppet manifests against the Puppetlabs style guide and alerts you to any discrepancies."
  homepage "https://github.com/rodjek/puppet-lint/"
  url "https://rubygems.org/gems/puppet-lint/"
  sha256 "f7f191e8bcd8ff35744bd5197548d283ecc1e117e08b6a3f0e614cb306140d87"

  def install
    system "gem",
           "install", "puppet-lint",
           "--version", "2.2.1",
           "--install-dir", "#{lib}/gems",
           "--bindir", "#{bin}"
  end

  test do
    system "#{bin}/puppet-lint help"
  end
end
