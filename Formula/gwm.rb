class Gwm < Formula
  desc "git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.3.0/gwm-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "85675dbf8d0e79336201397d890101f6aab85b4ec4d8b324e4a0f4b38ab7deb3"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.3.0/gwm-v1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "2bd708e3d61785921370a7e94c40bf068cb89617d1b2dc3cd8dc7f05262b7453"
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
