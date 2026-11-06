class Pdks < Formula
  desc "The Polydeukes covenant judge: covenant check, init, explain and docs, with pdks-<name> executables on PATH run as pdks <name>."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.25.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-aarch64-apple-darwin-v0.25.0.tar.gz"
    sha256 "0e1318a55169c6c6c96d5b1e86219b10a155a57cf5b6eadb6ca00eeea6009967"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-x86_64-unknown-linux-musl-v0.25.0.tar.gz"
      sha256 "009ac3ca1456e21867e1ce890fc551ad5226ac099fbed20b782f2a1f05ef25c5"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-aarch64-unknown-linux-musl-v0.25.0.tar.gz"
      sha256 "d8baf6090ea56ae4429b6cc94e99c297df9dbe6bc145fe4211b33e05f0827c0d"
    end
  end

  def install
    bin.install "pdks"
  end
end
