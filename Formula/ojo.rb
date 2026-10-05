class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.2.4"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.2.4/ojo_v0.2.4_darwin_arm64"
      sha256 "277d1943dc9d19baf93755c83b4050b222e48f7418b41db0a18ef776a0822872"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.2.4/ojo_v0.2.4_darwin_amd64"
      sha256 "89e88de3c44d4a8f41d799081e6b53025fa71adc2aa6465effa2b7b674c733cc"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
