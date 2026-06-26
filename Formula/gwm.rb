class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.0.0/gwm-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "e73e78c7ecd3602d5a27a1ca7d999fb2934851e897ca59adf4d757ece0a52d79"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.0.0/gwm-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "9506b37c3b347398210a289160bd30c70af752b993709cc97bc5f637b097b360"
    end
  end

  def install
    bin.install "gwm"
    generate_completions_from_executable(bin/"gwm", "completions")
  end

  test do
    assert_match "gwm", shell_output("#{bin}/gwm --version")
  end
end
