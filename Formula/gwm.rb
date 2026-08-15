class Gwm < Formula
  desc "git worktree manager: TUI + CLI, native libgit2, per-repo bootstrap"
  homepage "https://github.com/kbrdn1/gwm-cli"
  version "1.9.0"
  # `any_of:` is the DSL's disjunction: the user picks a license. A plain
  # `license "MIT OR Apache-2.0"` string is not an SPDX expression to brew,
  # it is an unknown license name.
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.9.0/gwm-v1.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "33f07d370ff72cf2a86b1e22004924e01c1373dfa10c945b5eaf98df1ad55b29"
    end
    on_intel do
      url "https://github.com/kbrdn1/gwm-cli/releases/download/v1.9.0/gwm-v1.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "dcf369be50cd502384b95f97d48a82296b7546e95eef43e721d2704c8dd12739"
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
