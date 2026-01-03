# typed: false
# frozen_string_literal: true

class Hapi < Formula
  desc "App for agentic coding - access coding agent anywhere"
  homepage "https://github.com/tiann/hapi"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-arm64.tar.gz"
      sha256 "457a00fca3d4f61cbf35995498f28e8473b58fff1c748e3fe3d0f048ec07cd5d"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-darwin-x64.tar.gz"
      sha256 "0c0053aba51e8743da8dd82761f1b2d7b8ad0faff34ecf0e143b8c4d13e71136"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-arm64.tar.gz"
      sha256 "1858771ab9963fb17da795431c8988a39b1232543507091ade965e2afe642d29"
    else
      url "https://github.com/tiann/hapi/releases/download/v#{version}/hapi-linux-x64.tar.gz"
      sha256 "5bdbf54e1e3abe7849470ce019319c17d0267a06fe77594621111f454be6ead0"
    end
  end

  def install
    bin.install "hapi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hapi --version")
  end
end
