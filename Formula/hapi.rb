# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "316ece3495be77f5f923864e3ac64e249b29b647b68eaa2a726653f4a19e2da4"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "b5279b034b82dba515d6e2192f40dafefbedfca342954d5a9bf1bbf165ace679"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "0f78aa278ba40985471ddf329418fb51678a9bdb26bd23140928d5e615d40f52"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64.tar.gz"
      sha256 "9f51e9912a5b4d6af54d26e04966d12493eb8f550a229829c04807c9d1821339"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
