class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.1.1/gwm-v1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "c4b00394e316cb47ca8d2ba87a3c975d07c5299179aab4a541639d166982e400"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.1.1/gwm-v1.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "580b480654ceba44cf1b6c7beb7ba8f841f0652b3227191ed93c5022f9e1c293"
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
