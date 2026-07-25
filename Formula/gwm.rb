class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.4.0/gwm-v1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "822bc0d1883f83505dacc34a5bdf9a804bc92ae9bcc5392477f5362432d35bdb"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.4.0/gwm-v1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "86eabd03d2bc7d539805d0086d48d5e9850b189858bebe80a1a29baefcb1a3f8"
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
