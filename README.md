# Dot files

This repository contains my dot files. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage them.

For now we are only managing the following dot files:

- `neovim`
- `wezterm`
- `neofetch` (while it last)


## Installation

To install the dot files, clone the repository and run the following commands:

```bash
cd dotfiles
stow neovim
stow wezterm
stow neofetch
```

This will create symlinks to the dot files in the appropriate directories.

## Uninstallation

To uninstall the dot files, run the following commands:

```bash
cd dotfiles
stow -D neovim
stow -D wezterm
stow -D neofetch
```

This will remove the symlinks to the dot files in the appropriate directories.


## Contributing

This is my personal config... soooo, I would not recommend you for trying it. But if you want to, feel free to contribute :).
