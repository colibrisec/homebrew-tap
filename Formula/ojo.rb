class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.0.6"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.6/ojo_v0.0.6_darwin_arm64"
      sha256 "1a680dc286ca5cc72c93a35ddec771767973f6b2e2770cdcafd7a0b6f3c3d05a"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.6/ojo_v0.0.6_darwin_amd64"
      sha256 "3c1d35edf13061fe20d006d3d0c799aff2e6f5e44605e426d087b35c50e85415"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
