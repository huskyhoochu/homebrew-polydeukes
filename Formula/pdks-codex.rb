class PdksCodex < Formula
  desc "The Polydeukes host adapter that connects Codex to the pdks covenant judge."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.23.0"
  license "MIT"

  depends_on "huskyhoochu/polydeukes/pdks"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-codex-aarch64-apple-darwin-v0.23.0.tar.gz"
    sha256 "c819857202efd7a8af407e96f398315197d4bb3abd13873bbd507fadee413458"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-codex-x86_64-unknown-linux-musl-v0.23.0.tar.gz"
      sha256 "38bc00478a78919a4565f0f421e18a203cc7ace73fca2f1fed1239f13c1a1b73"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-codex-aarch64-unknown-linux-musl-v0.23.0.tar.gz"
      sha256 "7ce2bbd5318a338338451f504aa237965fa05461d308d11db8b8cae4da5c4682"
    end
  end

  def install
    bin.install "pdks-codex"
  end
end
