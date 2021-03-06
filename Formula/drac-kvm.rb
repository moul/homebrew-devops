# -*- ruby -*-

require "language/go"

class DracKvm < Formula
  desc "A simple CLI launcher for Dell DRAC KVM sessions."
  homepage "https://github.com/PaulMaddox/drac-kvm"
  url "https://github.com/PaulMaddox/drac-kvm"
  sha256 "748cafba9b2c8855be58546b472bf2a57301a2197fde8ecb5df7588f3298cc51"

  head "https://github.com/PaulMaddox/drac-kvm.git", :branch => "master"

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
