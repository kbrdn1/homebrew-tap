class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.6.1/gwm-v1.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "6479e0610811323cc72ee49f12b16605bb12602e60828167de87f32ae7012f9c"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.6.1/gwm-v1.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "6607a4e3f092a3b4aec2d20379c28d07035ecec3050b34dcfef1ff619b7aa0d6"
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
