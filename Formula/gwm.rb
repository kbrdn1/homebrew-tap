class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.0.1/gwm-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "e3a494fb0b7ab3a3fa0d8aa2e8f0aa0d7284724b8d75ff707a826740ec725182"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.0.1/gwm-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "ae1a93b890a6d70ed10500ddd5bd455d1721bf8e49561aaa5fb0e2deed7133a8"
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
