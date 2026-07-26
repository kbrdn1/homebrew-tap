class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.5.0/gwm-v1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "a2df70f4d02fa70501a35d2734389c9666938afcaeef532621a5363c3663e950"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.5.0/gwm-v1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "3f87f2fb605cd93d4084f77aeb5109052b6fae565d1b785c309b56cdfe183e52"
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
