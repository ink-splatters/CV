## CV

Personal CV based on [modern-cv](https://typst.app/universe/package/modern-cv) typst template
(port of LaTeX [Awesome CV](https://github.com/posquit0/Awesome-CV))

## Development

### Preqrequisites

[nix](https://nixos.org/download) or [lix](https://lix.systems) (alternative nix implementation)

### Enter development shell

```sh
❯ nix --extra-experimental-features 'nix-command flakes' develop
```

### Generating CV

```sh
❯ make
```

or alternatively, to open the generated PDF after generation (at least on macOS)

```sh
❯ make open
```

_NOTE_: typst warnings should be ignored for now as they are coming from the upstream.

### Formatting

```sh
❯ make fmt
```

formats both nix and typst code

### TODO

pre-commit hooks (integreated into flake-parts)

## Credits

- [Paul Tsouchlos's](https://github.com/DeveloperPaul123) for modern-cv template
- [typst team](https://typst.app/about/)
- [Robert Hensing](https://github.com/roberth) for [flake.parts](https://flake.parts)
- [nix project and community](https://nixos.org/community)
