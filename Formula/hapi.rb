# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "aedb5ca4c4c3a9537ea6a8dec2ee13658e2ea424fc8c899d258cb35503d7b29b"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "117cfce04e3d2d3e8d00a260b31911b80c4190cdcbde1257ed1ceb792c3e4cf0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "2b4e75c896ae082711f4e75b5e2ac15d6882cce47873fd5e490ad55fa3093b33"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64.tar.gz"
      sha256 "c6017d955432ba67f0e8b2ce8a761935cc1933580b1ddc3497f08b0d7dff4aa2"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
