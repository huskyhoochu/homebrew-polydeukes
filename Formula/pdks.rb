class Pdks < Formula
  desc "The Polydeukes covenant judge: covenant check, init, explain and docs, with pdks-<name> executables on PATH run as pdks <name>."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.26.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-aarch64-apple-darwin-v0.26.0.tar.gz"
    sha256 "fdd89974178a65d29899257240279e466478c7a647ef620ab6487e7fd2fd18fa"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-x86_64-unknown-linux-musl-v0.26.0.tar.gz"
      sha256 "403cac4e6118bbcb9cb4323a91daa24d7e9e6167fb13efc0ffd7fdf8ca1e5f7b"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-aarch64-unknown-linux-musl-v0.26.0.tar.gz"
      sha256 "27b8d5ca812ee45fe6ca453c9f075e7c2e21c61160f47e0cb02273b9be381f49"
    end
  end

  def install
    bin.install "pdks"
  end
end
