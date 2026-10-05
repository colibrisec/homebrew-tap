class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.2.3"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.2.3/ojo_v0.2.3_darwin_arm64"
      sha256 "1e0769053c799fb3aa69f6905eb1fe3f4725310323a3ad0c09c5df5800deb5ce"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.2.3/ojo_v0.2.3_darwin_amd64"
      sha256 "a551b7f1344e5dd07b334ae55058caed9890ab70af96b80c45a31ccae7f8eda0"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
