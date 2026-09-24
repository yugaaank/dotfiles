# dotfiles

Arch Linux config for a terminal-centric Hyprland setup with Noctalia v5, Neovim, Zsh, Kitty, and Starship.

## The stack

- **Hyprland** -- tiling compositor
- **Noctalia v5** -- shell/UI (this repo is built around it)
- **Zsh + Starship** -- shell and prompt
- **Neovim** (LazyVim) -- editor
- **Kitty** -- GPU terminal

## Install

```bash
sudo pacman -S --needed hyprland hypridle hyprlock stow kitty neovim starship zoxide fzf wl-clipboard gnome-keyring zsh
yay -S noctalia-git
```

Backup your old `~/.config` before running stow.

## Deploy

```bash
git clone https://github.com/yugaaank/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow hypr kitty zsh starship fastfetch noctalia zed nvim snappy-switcher
```

Remove with `stow -D <package>`.

## Tweak it

Configs are split by tool: `hypr/`, `kitty/`, `zsh/`, `starship/`, etc. Each is a GNU Stow package — editing the file under `~/dotfiles/<pkg>/.config/...` edits your live config (it's a symlink).

- Zsh user overrides: `~/.config/zsh/user.zsh`
- Hypr user overrides: `~/.config/hypr/user.lua`

## Keybinds

- `SUPER + Return` -- Kitty
- `SUPER + Q` -- kill window
- `SUPER + F` -- fullscreen
- `SUPER + B` -- toggle floating
- `SUPER + H/J/K/L` -- move focus
- `SUPER + SHIFT + H/J/K/L` -- move window

## Security

Don't commit secrets. Use gnome-keyring or `pass`.
