class PdksMemory < Formula
  desc "The Polydeukes memory extension, run as pdks memory: answers from the markdown files on every run and keeps no index file."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.26.0"
  license all_of: ["MIT", "CC-BY-SA-4.0"]

  depends_on "huskyhoochu/polydeukes/pdks"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-memory-aarch64-apple-darwin-v0.26.0.tar.gz"
    sha256 "884cd0194331d6ca37bcfb5363a86da8aea95f18e1badac696f065a88797f2d6"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-memory-x86_64-unknown-linux-musl-v0.26.0.tar.gz"
      sha256 "2ef5d84c5bb22ab2268b40a377aee63acee802f7fb7690a040c7f37ac690ae24"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-memory-aarch64-unknown-linux-musl-v0.26.0.tar.gz"
      sha256 "f20482e16a180fb48c1a2574ee54b60490602dd36168a017222da0aec75a643b"
    end
  end

  def install
    bin.install "pdks-memory"
    prefix.install "GARU-LICENSE", "EN-KO-LICENSE"
  end
end
