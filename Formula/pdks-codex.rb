class PdksCodex < Formula
  desc "The Polydeukes host adapter that connects Codex to the pdks covenant judge."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.25.0"
  license "MIT"

  depends_on "huskyhoochu/polydeukes/pdks"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-codex-aarch64-apple-darwin-v0.25.0.tar.gz"
    sha256 "258543e52f54c19d873976c5ae42b8e64579a25cfb9464cf808bfe865be68641"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-codex-x86_64-unknown-linux-musl-v0.25.0.tar.gz"
      sha256 "7785982464a233710ed441ddeb477764d4ce2a82f8bff0d4b1f6e7b704e52c15"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-codex-aarch64-unknown-linux-musl-v0.25.0.tar.gz"
      sha256 "3a5d408e53365b1a02a83ced26f2754a7f5db87e4deeed63d780f6b15bca80d5"
    end
  end

  def install
    bin.install "pdks-codex"
  end
end
