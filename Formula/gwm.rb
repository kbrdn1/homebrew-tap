class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.8.0/gwm-v1.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "410bc78ec32831993893c8cb6b5ca1cfc6e440b016874c1e3da7c20c61ed7d17"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.8.0/gwm-v1.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "3d7e114893ea682f7c7ebc598a03b46055cf74c48ee48ab4509b183afee652c2"
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
