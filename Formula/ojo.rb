class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.0.10"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.10/ojo_v0.0.10_darwin_arm64"
      sha256 "0f6112f797e980c9f039ab4f0d9228f80c74ad9b903489584651b22043173f8c"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.10/ojo_v0.0.10_darwin_amd64"
      sha256 "45f4c4cfc73d6de86f93d60d6c9cddd0b618724b99f42e2177aa23044b8aada3"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
