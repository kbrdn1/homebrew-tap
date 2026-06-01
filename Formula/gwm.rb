class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v0.8.0/gwm-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "799cf06fcb97ee91428bfceb6e4a97751e3671601c7c72b4c6a5b7f3a38f0057"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v0.8.0/gwm-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "25767038be0ffeddbef54c5209bace9452a80b3f853d869d1b73902a2397562c"
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
