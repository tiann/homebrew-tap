# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.15.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "f4cacfe4cf32ee6ab15f0d9a2df1f9b9dd054b39e127685b5761efd3c18a0755"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "1bce2f83494848d9d965a735fa0443d037d71e7e610f016a0ece340f9dd8e075"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "0947dacdf51c61a4f31cb787f69c8bc20c14004f1ce5555571fa7ac51df6d99f"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64.tar.gz"
      sha256 "4aed3f807bff9ce275cb796166803ec1c35a07015c8d6b0cf5ace52df898b6c5"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
