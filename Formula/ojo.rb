class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.0.7"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.7/ojo_v0.0.7_darwin_arm64"
      sha256 "301598664c7aa891e97abeea6e176b2cab9323bee1695cd20f76c3d8515d6f60"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.7/ojo_v0.0.7_darwin_amd64"
      sha256 "523dcc850840de515f6f178e88aad558dd96ded33c4a652ef4539934efea4a5a"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
