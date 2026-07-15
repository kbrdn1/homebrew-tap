class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.1.0/gwm-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f75ca5fb1411cb7661fd8e55b3c7fe7a06f972759e4e826c6ac0235f3afbad6a"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.1.0/gwm-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0e2893130fffec8932f038a9470caa497867724765bf15cbda7b670141f49859"
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
