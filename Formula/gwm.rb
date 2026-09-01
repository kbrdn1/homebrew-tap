class Gwm < Formula
  desc "git worktree manager: TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.10.0"
  # `any_of:` is the DSL's disjunction: the user picks a license. A plain
  # `license "MIT OR Apache-2.0"` string is not an SPDX expression to brew,
  # it is an unknown license name.
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.10.0/gwm-v1.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "d49266261daeb47520b428a677293c7dea79203a11275a45c29248428cb23f33"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.10.0/gwm-v1.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "2f0017ec8eea880ba25079153054d306125a7f4cc4cbaa9b1550428e0bf8ff80"
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
