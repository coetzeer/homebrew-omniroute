# homebrew-omniroute

Homebrew tap for [OmniRoute](https://omniroute.online) — a unified AI router with 160+ providers, compression, auto fallback, MCP/A2A, desktop/PWA, and OpenAI-compatible APIs.

**Upstream:** [omniroute/omniroute](https://github.com/omniroute/omniroute)

## Install

```sh
brew tap coetzeer/omniroute
brew install omniroute
```

## Service

OmniRoute runs as a background service via `brew services`:

```sh
brew services start omniroute
```

The formula's `service do` block translates to a launchd agent on macOS and a systemd user unit on Linux, restarting on failure (`keep_alive true`) and logging to the Homebrew var dir.