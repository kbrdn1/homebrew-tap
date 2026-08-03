class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.6.0/gwm-v1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "6855967fbb1d2d648dbb7bce6068481d38198fc3b4eb1039c964311cae75c47a"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.6.0/gwm-v1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "72a282ad12b634098ec10f8e47ab33bafb3da912f077b8aec0813088b2784556"
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
