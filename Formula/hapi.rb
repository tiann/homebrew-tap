# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "ebb791d6288384284e8f1382f9e923ffadb647a3520193cf05e0a32c30d9df94"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "e983724d20dd2bf67abb13694a37ee564f18b79bc5b2ad26d361174f6a62b328"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "1c112fcaef8596b606a6fc47192d8b4c2cd98a6787ab391f526cd9dbf6605ad6"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64-baseline.tar.gz"
      sha256 "3840fbeb9964a90f28fd27260d01a95481d9e4c42ba837992a906a5521e44009"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
