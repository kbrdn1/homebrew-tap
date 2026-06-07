class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v0.9.0/gwm-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "33f1798684e60bbcfe03767b4a5ff5687ce54bea51185d1df04e19913f20c6e0"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v0.9.0/gwm-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "3743335f3cd2ca16c6b4ee896cfa55b375fdcb51bb5d70dfe1a51dbe7a0b7bd4"
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
