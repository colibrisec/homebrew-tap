class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.1.0"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.1.0/ojo_v0.1.0_darwin_arm64"
      sha256 "7b7e390a6acce24e1f3959e2c7fb53bb3b06347e9820c075ecd1dd42b186d7d4"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.1.0/ojo_v0.1.0_darwin_amd64"
      sha256 "1ebcc7e15d4fa64264f545a89df1db4616f8baa145aea89e4044783edb8173d3"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
