# TeXRA Homebrew Tap

Homebrew formulae for [TeXRA](https://texra.ai), the AI-powered LaTeX research assistant.

## Install

```bash
brew install texra-ai/tap/texra
```

Then run `texra` to start a chat, or see `texra --help`.

## Upgrade

```bash
brew upgrade texra
```

## How it works

The `texra` formula installs the [`@texra-ai/cli`](https://www.npmjs.com/package/@texra-ai/cli)
npm package from the npm registry using Homebrew's Node toolchain. The formula
is kept in sync with npm automatically by a scheduled workflow in this repo
([`update-formula.yml`](.github/workflows/update-formula.yml)); it can also be
triggered manually from the Actions tab right after a release.

## License

The formulae in this repo are MIT. TeXRA itself is proprietary software —
see the [TeXRA terms of service](https://texra.ai/terms).
