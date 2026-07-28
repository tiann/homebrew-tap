# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "00e8382d0feaabffaafcb579a3a3458a2681d176d14df4f4c4917102655655c1"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "5c0a46296d3601d69cdb80cf0063cd467edcdca2a17231314c44b7e8fbf565b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "08a05d66505f5b4acbb39127ce2f60701f202ecfce413cba23b54da538396d01"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64-baseline.tar.gz"
      sha256 "c22787eb1e2c791e98015432258d197dcaed5d387eb3a53d6d8cbfe369c3d64d"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
