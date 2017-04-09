# -*- ruby -*-

require "language/go"

class Millipede < Formula
  desc "Print a beautiful millipede."
  homepage "https://github.com/getmillipede/millipede-go"
  url "https://github.com/getmillipede/millipede-go/archive/v1.2.0.tar.gz"
  head "https://github.com/getmillipede/millipede-go.git"
  sha256 "90c7bd537bbd71af262bab57b2465005933915b683e9739a21957832746f5f31"

  depends_on "go" => :build

  # go_resource "github.com/codegangsta/cli" do
  #   url "https://github.com/codegangsta/cli.git"
  # end

  # go_resource "github.com/sirupsen/logrus" do
  #   url "https://github.com/sirupsen/logrus.git"
  # end

  # go_resource "github.com/kortschak/zalgo" do
  #   url "https://github.com/kortschak/zalgo.git"
  # end

  # go_resource "github.com/mgutz/ansi" do
  #   url "https://github.com/mgutz/ansi.git"
  # end

  def install
    ENV["GOPATH"] = "#{buildpath}"
    ENV.prepend_create_path "PATH", "#{buildpath}/bin"

    mkdir_p "#{buildpath}/src/github.com/getmillipede"
    ln_s "#{buildpath}", "#{buildpath}/src/github.com/getmillipede/millipede-go"

    # Language::Go.stage_deps resources, "#{buildpath}/src"
    Language::Go.stage_deps resources, buildpath/"src"

    system "go", "install", "github.com/codegangsta/cli"
    system "go", "install", "github.com/kortschak/zalgo"
    system "go", "install", "github.com/mattn/go-colorable"
    system "go", "install", "github.com/mgutz/ansi"
    system "go", "install", "github.com/sirupsen/logrus"
    system "go", "install", "golang.org/x/net/html"

    # cd("src/github.com/codegangsta/cli") { system "go", "install" }
    # cd("src/github.com/sirupsen/logrus") { system "go", "install" }
    # cd("src/github.com/kortschak/zalgo") { system "go", "install" }
    # cd("src/github.com/mgutz/ansi") { system "go", "install" }

    system "go", "build", "-o", "#{bin}/millipede", "./cmd/millipede-go"
  end

  test do
    system "#{bin}/millipede --help"
  end
end
# EOF
