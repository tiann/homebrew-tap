# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "54536b19ea13bbaa9a2a5fd0e98bb31d209d6cd9dd30f14cdafe856cfa77ffed"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "c32239c0fc4a0d8a1f97dc7f462f797bb7f1d4a0d333dc0d02c86b9c91abe2a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "702530d0d3ab6409f199417297c7cc8ff4ec9832fa590b601e1321367c1b8a1a"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64.tar.gz"
      sha256 "b96fde6fc00fab0e3bbbe319eb64a7e3db4c8869abeeb9f9aecf62e2f2fa0753"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
