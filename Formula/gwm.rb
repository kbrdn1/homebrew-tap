class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.2.0/gwm-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "3eb27003f1674f6d1e6e82944528a72a7b6f0d24ea9f403d2ab2eaa4ca431a98"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.2.0/gwm-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "666b64558698f0e0b121a1795de54252c4d7cc3146020faca70596c693e25488"
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
