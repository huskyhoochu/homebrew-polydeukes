class PdksMemory < Formula
  desc "The Polydeukes memory extension, run as pdks memory: answers from the markdown files on every run and keeps no index file."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.25.0"
  license all_of: ["MIT", "CC-BY-SA-4.0"]

  depends_on "huskyhoochu/polydeukes/pdks"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-memory-aarch64-apple-darwin-v0.25.0.tar.gz"
    sha256 "c8e672d5fb3cba76d629303bda42fc3003f16667b21342b550da8fff733a3f61"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-memory-x86_64-unknown-linux-musl-v0.25.0.tar.gz"
      sha256 "54ed414d38b9828feee878d2929a1489ea53b4a1d2f6672c27db6f6d56f4df0f"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-memory-aarch64-unknown-linux-musl-v0.25.0.tar.gz"
      sha256 "65aa1afa7a4d2ae1e753d6a085f353cb466e0475acbab8fefe619171f3ef9223"
    end
  end

  def install
    bin.install "pdks-memory"
    prefix.install "GARU-LICENSE", "EN-KO-LICENSE"
  end
end
