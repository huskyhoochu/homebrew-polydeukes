class PdksClaudeCode < Formula
  desc "The Polydeukes host adapter that connects Claude Code to the pdks covenant judge."
  homepage "https://github.com/huskyhoochu/polydeukes"
  version "0.26.0"
  license "MIT"

  depends_on "huskyhoochu/polydeukes/pdks"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-claude-code-aarch64-apple-darwin-v0.26.0.tar.gz"
    sha256 "7742edc04bbb9231faf184e6a329e4f941809a28f15113f1720b82cab52ee30e"
  end

  on_linux do
    on_intel do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-claude-code-x86_64-unknown-linux-musl-v0.26.0.tar.gz"
      sha256 "71fdec140cf50f32039c192edd7182929c7636ab4a4f93a9bf7784037b5b547d"
    end
    on_arm do
      url "https://github.com/huskyhoochu/polydeukes/releases/download/v0.26.0/pdks-claude-code-aarch64-unknown-linux-musl-v0.26.0.tar.gz"
      sha256 "2c37cca3ec388fb7f325d4321f6e425d5304e9b12ea2b76e8a30a8b786f285da"
    end
  end

  def install
    bin.install "pdks-claude-code"
  end
end
