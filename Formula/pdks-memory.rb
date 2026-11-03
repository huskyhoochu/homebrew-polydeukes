class PdksMemory < Formula
  desc "The Polydeukes memory extension, run as pdks memory: answers from the markdown files on every run and keeps no index file."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.23.0"
  license all_of: ["MIT", "CC-BY-SA-4.0"]

  depends_on "huskyhoochu/polydeukes/pdks"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-memory-aarch64-apple-darwin-v0.23.0.tar.gz"
    sha256 "ffe4e1a4a4cbc730528c07537dc17d9298df0c21adefbec03dd8330d7be03e47"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-memory-x86_64-unknown-linux-musl-v0.23.0.tar.gz"
      sha256 "0abd747b534572e53b7cd7cd5d0ff56c228062e640d447c3533d46ee1db4337e"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-memory-aarch64-unknown-linux-musl-v0.23.0.tar.gz"
      sha256 "8f33675690b0717d3a23cd382ff5a8831cfc4a41ce4d2a2ed9e3038418a27443"
    end
  end

  def install
    bin.install "pdks-memory"
    prefix.install "GARU-LICENSE", "EN-KO-LICENSE"
  end
end
