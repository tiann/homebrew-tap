# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.16.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "1bd5061e3bd5b1eaf438e5c56b4d4e809e648dc4cea97fc54ecd8211812ab78f"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "49465ac923b6b4f9e138093c42037340d1061d8c3fd91589eebfffedf4517c9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "9e7b6ddd6bbae2abe8b0f41d14d60073896ff07a128166472fd606bb203acd7d"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64-baseline.tar.gz"
      sha256 "c22cf70bdeec5c26cd879afe50af861aa45c77c08a54c3293993a59ec5168fa0"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
