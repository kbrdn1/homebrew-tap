class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.0.2/gwm-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "04706e195d6db61b1b968868f13f2579b01d4f3055a81953c486c31bb45a25ce"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.0.2/gwm-v1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "a00d77859cb79e052fdf08a8c622cc432709da8f7501cf712ba90ff2eac60058"
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
