# -*- ruby -*-

require "language/go"

class Millipede < Formula
  desc "Print a beautiful millipede."
  homepage "https://github.com/getmillipede/millipede-go"
  url "https://github.com/getmillipede/millipede-go/archive/v1.2.0.tar.gz"
  head "https://github.com/getmillipede/millipede-go.git"
  sha256 "90c7bd537bbd71af262bab57b2465005933915b683e9739a21957832746f5f31"

  depends_on "go" => :build

  go_resource "github.com/codegangsta/cli" do
    url "https://github.com/codegangsta/cli.git"
  end

  go_resource "github.com/Sirupsen/logrus" do
    url "https://github.com/Sirupsen/logrus.git"
  end

  go_resource "github.com/kortschak/zalgo" do
    url "https://github.com/kortschak/zalgo.git"
  end

  go_resource "github.com/mgutz/ansi" do
    url "https://github.com/mgutz/ansi.git"
  end

  def install
    # ENV["GOPATH"] = "#{buildpath}"
    # ENV.prepend_create_path "PATH", "#{buildpath}/bin"
    ENV["GOPATH"] = buildpath
    ENV.prepend_create_path "PATH", buildpath/"bin"

    # mkdir_p "#{buildpath}/src/github.com/getmillipede"
    # ln_s "#{buildpath}", "#{buildpath}/src/github.com/getmillipede/millipede-go"
    mkdir_p buildpath/"src/github.com/getmillipede"
    ln_s buildpath, buildpath/"src/github.com/getmillipede/millipede-go"

    # Language::Go.stage_deps "#{resources}", "#{buildpath}/src"
    Language::Go.stage_deps resources, buildpath/"src"

    system "go", "build", "-o", "millipede", "./cmd/millipede-go"
    bin.install "millipede"
  end

  test do
    system "#{bin}/millipede --help"
  end
end
# EOF
