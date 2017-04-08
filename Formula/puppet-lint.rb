class PuppetLint < Formula
  def initialize(*args)
    @name = "puppet-lint"
    @version = "2.2.1"
    super
  end

  def install
    system "gem", "install", name, "--version", version, "--install-dir", prefix
  end
end
