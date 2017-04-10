# -*- ruby -*-

require "language/go"

class MillipedeGo < Formula
  desc "Print a beautiful millipede."
  homepage "https://github.com/getmillipede/millipede-go"
  url "https://github.com/getmillipede/millipede-go/archive/v1.3.0.tar.gz"
  sha256 "643b23c486ec887bdf2d071692a4e5baecb65d5b6a70fb5c135bedaf653180ca"

  depends_on "go" => :build

  go_resource "github.com/codegangsta/cli" do
    url "https://github.com/codegangsta/cli.git"
  end

  # go_resource "github.com/kortschak/zalgo" do
  #   url "https://github.com/codegangsta/cli.git"
  # end

  # go_resource "github.com/mattn/go-colorable" do
  #   url "https://github.com/mattn/go-colorable.git"
  # end

  # go_resource "github.com/mgutz/ansi" do
  #   url "https://github.com/mgutz/ansi.git"
  # end

  # go_resource "github.com/sirupsen/logrus" do
  #   url "https://github.com/sirupsen/logrus.git"
  # end

  # go_resource "github.com/urfave/cli" do
  #   url "https://github.com/urfave/cli.git"
  # end

  # go_resource "golang.org/x/net" do
  #   url "https://go.googlesource.com/net.git"
  # end

  def install
    ENV["GOPATH"] = buildpath
    mkdir_p buildpath/"src/github.com/getmillipede"
    ln_s buildpath, buildpath/"src/github.com/getmillipede/millipede-go"
    Language::Go.stage_deps resources, buildpath/"src"
    system "go", "build", "-o", "#{bin}/millipede-go", "./cmd/millipede-go"
  end

  test do
    system "#{bin}/millipede --help"
  end
end
# EOF
