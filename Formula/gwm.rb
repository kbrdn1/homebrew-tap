class Gwm < Formula
  desc "git worktree manager: TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.11.0"
  # `any_of:` is the DSL's disjunction: the user picks a license. A plain
  # `license "MIT OR Apache-2.0"` string is not an SPDX expression to brew,
  # it is an unknown license name.
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.11.0/gwm-v1.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "23cf3008c8c599e96b246117e29aac88d889dfb93c23dfb2c1d7b05f5381009c"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.11.0/gwm-v1.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "69f4cb151cb45b3f67a3331257c9fba0ce61462f26307251cee5b3b9b38b460c"
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
