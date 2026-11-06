class PdksClaudeCode < Formula
  desc "The Polydeukes host adapter that connects Claude Code to the pdks covenant judge."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.25.0"
  license "MIT"

  depends_on "huskyhoochu/polydeukes/pdks"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-claude-code-aarch64-apple-darwin-v0.25.0.tar.gz"
    sha256 "83455e510fbe6cf491bf30056bb522a9d804024b30f8295a1e6d232850ba5c42"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-claude-code-x86_64-unknown-linux-musl-v0.25.0.tar.gz"
      sha256 "2e33ed678a3bc3e366549868deec901fd908cb812d9b7d3228d3e40dc1083a08"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.25.0/pdks-claude-code-aarch64-unknown-linux-musl-v0.25.0.tar.gz"
      sha256 "8873b8d8e2554f966b31bfaf22bc56365ba75a1ca4df00cc485a6665c31ac878"
    end
  end

  def install
    bin.install "pdks-claude-code"
  end
end
