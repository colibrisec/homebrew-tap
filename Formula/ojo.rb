class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.2.0"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.2.0/ojo_v0.2.0_darwin_arm64"
      sha256 "924f16be1b0479756a42109c258b880bcbd9af2eef11ea1a3b3f1f4d1e84de8b"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.2.0/ojo_v0.2.0_darwin_amd64"
      sha256 "014c5b28aca5233c73b3bcab787fa3f8d586cf6afa3132b9ff4572f0812bd94f"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
