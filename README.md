# CV

Personal CV based on [modern-cv](https://typst.app/universe/package/modern-cv) typst template
(port of LaTeX [Awesome CV](https://github.com/posquit0/Awesome-CV))

## Development

### Preqrequisites

- [nix](https://nixos.org/download) or [lix](https://lix.systems) (alternative nix implementation)
- nix [experimental features](https://nix.dev/manual/nix/2.18/contributing/experimental-features)
`nix-command` and `flake` enabled
- optionally: [`direnv`](https://direnv.net) to make dev environment persistent

### Development shell

#### Entering shell

```sh
❯ nix develop
```

or alternatively, if using `direnv` and it hasn't been previously initialized for the repo:

```sh
❯ direnv allow .
```

_NOTE_: the above command also sets up pre-commit hooks (see below)

#### Generating CV

```sh
❯ make
```

or alternatively, to open the PDF after its generation (at least on macOS):

```sh
❯ make open
```

_NOTE:_ typst warnings should be ignored for now as they are coming from the upstream.

#### Formatting

to format both nix and typst code:

```sh
❯ make fmt
```

### pre-commit hooks support

#### Installation

_NOTE_: if not using `direnv` (or haven't run `direnv allow .`), pre-commit hooks
MUST be explicitly installed using:

```sh
❯ nix run .#install-hooks
```

### Configuration

The hooks are configured in `nix/pre-commit.nix`

_NOTE_: the changes in this file are not observed until the hooks are reinstalled using
the mentioned command. It's also highly recommended to clean the repo **before** doing the above:

```sh
❯ git clean -fdx
```

however, mind the consequences: **all untracked files in the project source tree will be erased, forever**

#### Running the checks explicitly

```sh
❯ nix flake check
```

## Credits

- [Paul Tsouchlos's](https://github.com/DeveloperPaul123) for modern-cv template
- [typst team](https://typst.app/about/)
- [Robert Hensing](https://github.com/roberth) for [flake.parts](https://flake.parts)
- [nix project and community](https://nixos.org/community)
