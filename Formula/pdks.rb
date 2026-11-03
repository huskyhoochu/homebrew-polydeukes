class Pdks < Formula
  desc "The Polydeukes covenant judge: covenant check, init, explain and docs, with pdks-<name> executables on PATH run as pdks <name>."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.23.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-aarch64-apple-darwin-v0.23.0.tar.gz"
    sha256 "2d04d9af2cf981b57298b68af68bb78aeac7dd86b9fcff9f2a5a98d65ac41e31"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-x86_64-unknown-linux-musl-v0.23.0.tar.gz"
      sha256 "e593b844c4035112a7a1030cfbf46ba36df236bb73f3c18f834f2ca0fb3eb3bc"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-aarch64-unknown-linux-musl-v0.23.0.tar.gz"
      sha256 "1f72bed170776f1a7be07e3d6e66e84c1658a07f9a71a21b279952e28f55777d"
    end
  end

  def install
    bin.install "pdks"
  end
end
