class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v0.5.0/gwm-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "14c5d917ed01d9312cc4ff0d7a5baf6b5ec959acb769ec80977d8f722d4ec329"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v0.5.0/gwm-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "4057d23d255c0737c2a41c161fe9355ab53c185165c84b980592ef52a1755fbe"
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
