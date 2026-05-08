# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.17.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "30c65a2102914216c2fb323f4eca4a33215beb575c4986681a486ed9f8d44f5f"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "ea748cab687dddadb0a85eab0a18a3526793f704e8e13f63fbccf4d711b0f10d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "da596e88f68ef080b3410134be73852e8055ab2647feac58f2623ed971260c80"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64-baseline.tar.gz"
      sha256 "3ef0be6e7cc4eeafce2acad199b6ab1a3ee524c7d9433ecffb0129a9d164aeb5"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
