# Dotfiles — karlowiczpl

A curated collection of dotfiles and configs for a development environment (terminal, shell, editor, tmux). This repository provides opinionated defaults and helper scripts to quickly set up a workstation.

---

## Contents

- `alacritty.toml` — Alacritty terminal configuration (colors, fonts, keybindings, shell).
- `fish/` — Fish shell configuration (functions, completions, config files).
- `nvim/` — Neovim configuration (init, plugins, lua/vim files).
- `tmux/` — tmux configuration files (tmux.conf, plugin config).
- `setup.sh` — Installation / bootstrap script to install and symlink configurations.
- `README.md` — This documentation.

---

## Overview

These dotfiles configure:

- Terminal: Alacritty
- Shell: fish
- Editor: Neovim
- Multiplexer: tmux

They aim to provide a polished, consistent developer experience: readable color scheme, Nerd Font-friendly fonts, sensible defaults and an easy bootstrap script.

---

## Alacritty — key settings

(alacritty.toml is included in the repo; important values reproduced here)

- Keybinding
  - Super + Shift + Return: spawn new Alacritty instance
- Colors
  - Primary background: `#11121d`
  - Primary foreground: `#a9b1d6`
  - Normal / bright palette is provided (blues, cyans, greens, magenta, red, yellow)
- Cursor
  - Shape: `Block`
  - Blinking: `Off`
- Fonts
  - Family: `JetBrains Mono Nerd Font` (used for normal, bold, italic and bold_italic)
  - Styles: normal `Medium`, italic `MediumItalic`, bold `Bold`, bold_italic `BoldItalic`
- Selection
  - `save_to_clipboard = false` (selection won't copy to system clipboard automatically)
- Shell
  - default shell configured: `/usr/bin/fish`
- Window
  - `opacity = 0.85`
  - Padding: `x = 5`, `y = 5`
- General
  - `live_config_reload = true` — Alacritty will pick up config changes without restart

Notes:
- Ensure the specified Nerd Font is installed (JetBrains Mono Nerd Font). If not installed, change the `family` entries or install the font.
- `live_config_reload` requires a sufficiently recent Alacritty build.

---

## Installation

Recommended quick install (run from a terminal):

1. Clone repository:
   git clone https://github.com/karlowiczpl/dotfiles.git
   cd dotfiles

2. Make the bootstrap script executable and run it:
   chmod +x setup.sh
   ./setup.sh

The `setup.sh` script is intended to create symlinks / copy configs into appropriate locations (e.g. `~/.config/alacritty/alacritty.toml`, `~/.config/fish/`, `~/.config/nvim/`, `~/.tmux.conf`), and may install or prompt about plugins. Inspect `setup.sh` before running to confirm behavior.

Manual installation (if you prefer not to run the script):

- Alacritty:
  - Create directory: `~/.config/alacritty/`
  - Copy the config: `cp alacritty.toml ~/.config/alacritty/alacritty.toml`
- fish:
  - Copy `fish/` contents into `~/.config/fish/`
- Neovim:
  - Copy `nvim/` contents to `~/.config/nvim/`
- tmux:
  - Place `tmux` config file(s) into `~/.tmux.conf` or `~/.config/tmux/`

After manual installation, restart your terminal / shell.

---