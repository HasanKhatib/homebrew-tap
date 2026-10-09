# Homebrew tap

Homebrew tap for tools by [HasanKhatib](https://github.com/HasanKhatib).

## Install

```bash
brew tap HasanKhatib/tap          # once, to make everything below available
brew install HasanKhatib/tap/<name>
```

You can also install in one step without tapping first: `brew install HasanKhatib/tap/<name>`.

## Available

| Name | What it does | Install |
|---|---|---|
| [hikma](https://github.com/HasanKhatib/hikma-ai) | Install, create, and publish reusable AI-agent skills from any repo (first release coming soon) | `brew install HasanKhatib/tap/hikma` |

## How this repo works

- Recipes live in `Casks/` (pre-built binaries) and `Formula/` (built from source).
- Release automation in each project's repository (GoReleaser) writes its own recipe here on every release. Please don't edit those files by hand; they are overwritten on the next release.

## Uninstall and upgrade

```bash
brew upgrade <name>
brew uninstall <name>
brew untap HasanKhatib/tap
```
