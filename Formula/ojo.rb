class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.2.1"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.2.1/ojo_v0.2.1_darwin_arm64"
      sha256 "d55f0c42e157639a8d2e1b362737846b4393d48b381b4fdb9c816c32f3dc6c3e"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.2.1/ojo_v0.2.1_darwin_amd64"
      sha256 "d0dce1188722dc459dce79ffa1133cecac5b61ad361d48fbccb5e7708f01b9ef"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
