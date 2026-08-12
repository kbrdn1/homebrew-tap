class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.7.0/gwm-v1.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "29298d173dd81d3727e53d837be0214e396e80ad4352495dc424bc51bf804256"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.7.0/gwm-v1.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "80f3078662d348de16c53ea1b3d7d8fc4eaa75010b08b08199cf032763a2bf27"
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
