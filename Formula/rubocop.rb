class rubocop < Formula
  def initialize(*args)
    @name = "rubocop"
    @version = "0.48.1"
    super
  end

  def install
    system "gem", "install", name, "--version", version, "--install-dir", prefix
  end
end
