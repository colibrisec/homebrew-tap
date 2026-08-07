class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.0.8"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.8/ojo_v0.0.8_darwin_arm64"
      sha256 "74dbd862fd4f8bdca6d71edec066ed692d4185f28f33db244f141f4318946132"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.8/ojo_v0.0.8_darwin_amd64"
      sha256 "7f1ccba312d3703d35cdf849fa60cfa7029f36473244efa4890fecbe07c9f2da"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
