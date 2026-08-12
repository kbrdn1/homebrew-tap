class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.7.1/gwm-v1.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "35d7e32919ae2097b5f8e0248274bf41d70ae90106bcdaaa8cfcbf32c2addea7"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.7.1/gwm-v1.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "fe7ad16fb4286406dec4625895717242730cdf802e7d4807c990d398bfae587c"
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
