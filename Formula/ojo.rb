class Ojo < Formula
  desc "Security scanner for dependencies, secrets, misconfiguration, and code"
  homepage "https://github.com/colibrisec/ojo"
  version "0.0.9"
  license "GPL-2.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.9/ojo_v0.0.9_darwin_arm64"
      sha256 "ea80eef94572ddc08c6981315a8caf319ae3b680c7f943b879454475a108abaf"
    else
      url "https://github.com/colibrisec/ojo/releases/download/v0.0.9/ojo_v0.0.9_darwin_amd64"
      sha256 "5421346679d7522794cc2063653175d841174cd12df2abd83d82c308d29dec9d"
    end
  end

  def install
    bin.install Dir["ojo_*"].first => "ojo"
  end

  test do
    system "#{bin}/ojo", "--version"
  end
end
