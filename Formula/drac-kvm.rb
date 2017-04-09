# -*- ruby -*-

require "language/go"

class DracKvm < Formula
  desc "A simple CLI launcher for Dell DRAC KVM sessions."
  homepage "https://github.com/PaulMaddox/drac-kvm"
  url "https://github.com/PaulMaddox/drac-kvm"
  sha256 "90c7bd537bbd71af262bab57b2465005933915b683e9739a21957832746f5f31"

  head "https://github.com/PaulMaddox/drac-kvm.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    mkdir_p buildpath/"src/github.com/PaulMaddox"
    ln_s buildpath, buildpath/"src/github.com/PaulMaddox/drac-kvm"
    Language::Go.stage_deps resources, buildpath/"src"
    system "go", "build", "-o", "#{bin}/drac-kvm"
  end

  test do
    system "#{bin}/drac-kvm --help"
  end
end
# EOF
