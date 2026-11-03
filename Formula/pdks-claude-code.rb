class PdksClaudeCode < Formula
  desc "The Polydeukes host adapter that connects Claude Code to the pdks covenant judge."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.23.0"
  license "MIT"

  depends_on "huskyhoochu/polydeukes/pdks"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-claude-code-aarch64-apple-darwin-v0.23.0.tar.gz"
    sha256 "7bbe6873325ad47cc86cf772bef613a61c5caa471aa01207d4a6866cd460301c"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-claude-code-x86_64-unknown-linux-musl-v0.23.0.tar.gz"
      sha256 "46afe19ea6fcb22533d801305eca4624f171649193176eb3fb7e3c3cd272ef3d"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.23.0/pdks-claude-code-aarch64-unknown-linux-musl-v0.23.0.tar.gz"
      sha256 "f0ced0d075321fdaaed2a951f0ba36212aad57581184a19d9c626646dda082c6"
    end
  end

  def install
    bin.install "pdks-claude-code"
  end
end
