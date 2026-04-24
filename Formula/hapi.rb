# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "4a6043e4301af431b87c9f3fd22dc37ad6d037edcf0d88da0938c1fe25bf1a3b"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "850602dc5fd4201669ac0658a9e86d75c2fca419bd2568bb599d111bcd469095"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "af7147680d604ac8669188c14fe877dc1bc70b0e41d70727f45211e0afecb366"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64-baseline.tar.gz"
      sha256 "4cad337fc0dc0f3ca3d80f07bdd86f8ab0c0cc728a1713b2b1746900fac0eba2"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
