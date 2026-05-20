# kbrdn1/homebrew-tap

Personal Homebrew tap for [@kbrdn1](https://github.com/kbrdn1)'s CLI tools.

## Install

```bash
brew tap kbrdn1/tap
```

## Available formulae

| Formula | Description | Upstream |
|:--------|:------------|:---------|
| [`gwm`](Formula/gwm.rb) | git worktree manager — TUI + CLI, native libgit2, per-repo bootstrap | [kbrdn1/gwm-cli](https://github.com/kbrdn1/gwm-cli) |
| [`lazycurl`](Formula/lazycurl.rb) | Lazygit-style TUI HTTP client for API testing | [kbrdn1/LazyCurl](https://github.com/kbrdn1/LazyCurl) |

```bash
brew install gwm
brew install lazycurl
```

## How it stays up to date

Each formula is refreshed automatically by the upstream project's release pipeline after every stable tag:

- **`gwm`** — `homebrew-tap-update` job in [`kbrdn1/gwm-cli/.github/workflows/release.yml`](https://github.com/kbrdn1/gwm-cli/blob/main/.github/workflows/release.yml) renders `Formula/gwm.rb` from a versioned template and pushes the result here. Pre-releases (`-rc.N` / `-alpha.N` / `-beta.N`) are filtered out so `brew install gwm` always points at a stable build.
- **`lazycurl`** — GoReleaser updates `Formula/lazycurl.rb` from the upstream LazyCurl repo.

## Manual recovery

If a release ships but the formula sync fails (typically: expired token), the maintainer re-drives the workflow without re-tagging:

```bash
gh workflow run release.yml --ref v0.x.y --repo kbrdn1/gwm-cli
```

## License

MIT — see [LICENSE](LICENSE).
