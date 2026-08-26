class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.0.11"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.11/ojo_v0.0.11_darwin_arm64"
      sha256 "4e983dce7468cf2cb57f4251cdfd01637d50c990ee7a5e59c3d050c97694eb60"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.11/ojo_v0.0.11_darwin_amd64"
      sha256 "bb1bf227e7a7b3f8a22221437f047267622ea33dbd035f9c34a5f0565a6ae951"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
