class PdksCodex < Formula
  desc "The Polydeukes host adapter that connects Codex to the pdks covenant judge."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.26.0"
  license "MIT"

  depends_on "huskyhoochu/polydeukes/pdks"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-codex-aarch64-apple-darwin-v0.26.0.tar.gz"
    sha256 "a74fccb4de9084ef65736a91233fd469d91791143b245df85a3e06bddf6bdbbd"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-codex-x86_64-unknown-linux-musl-v0.26.0.tar.gz"
      sha256 "767ffb0e5fdb78b8d0419675fdf8aa60cf07915066bf81c7e4a6a679aaaa1b45"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-codex-aarch64-unknown-linux-musl-v0.26.0.tar.gz"
      sha256 "7ad917dddc37d13c41ba9f0421a1e5f49212e957cd5d6acd3be2e9590398f7b0"
    end
  end

  def install
    bin.install "pdks-codex"
  end
end
