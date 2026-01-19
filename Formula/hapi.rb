# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "64067267d4ef06b31366ffe83db637ca49876df8f2f6d249f3a6d1473cd876e4"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "350ab109a3df9da1c91105720aa16063f70c38753f7c170f5dbff4458c494de8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "f7232dae72198ffcf9b11680226ce9300b0d3e30cc7408aff0e9410f4fcee4b2"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64.tar.gz"
      sha256 "bc390b77c3e66204681afba18fe3cf369e2eadfef6edab3256e1d25a8f6ba475"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
