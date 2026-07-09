class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.0.3/gwm-v1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "7f305d7a31ece915a3589a1ed042eec6f5ecfeb5794ce0449ddca6cffc3729da"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.0.3/gwm-v1.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "cfcf4092a52bef64d9580aabe1193a50567545c6d9b7cd7d85b0ae5474d3e153"
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
