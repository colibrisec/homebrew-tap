class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.2.2"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.2.2/ojo_v0.2.2_darwin_arm64"
      sha256 "9e986391f031535ac6550b49d9c3570ee4f5e2becac74c5b5c7fa18fba81a896"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.2.2/ojo_v0.2.2_darwin_amd64"
      sha256 "7fe7da41697000016a6d1f85e6d19f11c7d75d0bca495b8bbfc0df8dd8900ae5"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
