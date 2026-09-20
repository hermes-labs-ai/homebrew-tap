# Hermes Labs Homebrew tap

Install Hermes Labs command-line tools through one shared Homebrew tap. This is
maintained by Hermes Labs; it is not the Homebrew core collection or an independent
endorsement. Product source, issues, and releases remain in each tool's repository.

## Install a tool

With [Homebrew](https://brew.sh/) installed:

```sh
brew tap hermes-labs-ai/tap
brew install hermes-labs-ai/tap/hermes-gate
hermes-gate --version
```

Use the fully qualified `hermes-labs-ai/tap/<formula>` name to select this tap.
The [Formula directory](Formula) is the current package inventory. Each formula
records its source release, checksum, dependencies, homepage, and executable test.
Follow the linked product documentation for usage and limitations.

If your Homebrew version requests tap trust, review the selected formula and use
`brew trust --formula hermes-labs-ai/tap/<formula>` for that tool. You do not need
to grant trust to the entire tap. See [Homebrew's trust guidance](https://docs.brew.sh/Tap-Trust).

## Update or remove

```sh
brew update
brew outdated
brew upgrade hermes-labs-ai/tap/hermes-gate
# When you no longer need the installed tool:
brew uninstall hermes-labs-ai/tap/hermes-gate
```

The tap packages specific released versions. It does not automatically follow a
product's newest release until its formula is updated and tested.

## Maintain this tap

Keep all Hermes Homebrew formulas in this repository under `Formula/`. Do not
create a repository per package or copy product source into the tap.

For each addition or version update:

1. Use a published source archive, verify its SHA-256, and declare every runtime
   and build dependency. Keep Python dependencies isolated with Homebrew's
   virtual-environment helper.
2. Give the formula a test that exercises a useful behavior without credentials,
   paid services, or network model calls. Keep product tests in the product repo.
3. Run `brew audit --strict`, install from source, and run `brew test` using the
   fully qualified formula name. The repository workflow repeats these checks on
   macOS for every formula before merge. A passing macOS run does not establish
   Linux compatibility.
4. Submit a focused pull request with source-release links, test evidence,
   maintainer affiliation, and truthful autonomous-system attribution when used.
   A maintainer reviews the diff and passing checks before merging.

Use [tap issues](https://github.com/hermes-labs-ai/homebrew-tap/issues) for packaging
failures or stale versions; use the product's issue tracker for tool behavior.
The workflow can also be run manually to check upstream dependency changes.
See [Homebrew's tap maintenance guide](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap).

**Affiliation:** `homebrew-tap` is maintained by Hermes Labs; Rolando Bosch is the founder of Hermes Labs.

<!-- hermes-labs:attribution v1 -->
<!-- hermes-labs:selection autonomous -->
This contribution was autonomously selected and produced by agents through [Hermes Labs](https://hermes-labs.ai)’ engineering infrastructure. [Rolando Bosch](https://github.com/roli-lpci) is the responsible human contributor and authorized publication from his personal GitHub account.
<!-- /hermes-labs:attribution -->
