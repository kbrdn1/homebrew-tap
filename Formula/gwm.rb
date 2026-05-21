class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v0.6.0/gwm-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "46952d8e5c449eef4dca62e76be04b23a7c90ab53bab1f954edee1b8eb5ba472"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v0.6.0/gwm-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "efe34e0596f28d35681ad77d99de13cc8b265e9c046de26dba6c57c29d83453a"
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
