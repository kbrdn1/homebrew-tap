class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v0.4.0/gwm-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "87e169d66e71270a0f5e1c422115d9ab5a0335afd794f42c81c8edf4bd0ff094"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v0.4.0/gwm-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "a661cbc94bd582150de5df9f2db387f387cf280373e187286f083d77470c4662"
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
