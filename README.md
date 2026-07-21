# dotfiles

Arch Linux config for a terminal-centric Hyprland setup with Noctalia v5, Neovim, Fish, Kitty, and Starship.

## The stack

- **Hyprland** -- tiling compositor
- **Noctalia v5** -- shell/UI (this repo is built around it)
- **Fish + Starship** -- shell and prompt
- **Neovim** (LazyVim) -- editor
- **Kitty** -- GPU terminal

## Install

```bash
sudo pacman -S --needed hyprland hypridle hyprlock stow fish kitty neovim starship zoxide fzf wl-clipboard gnome-keyring
yay -S noctalia-git
```

Backup your old `~/.config` before running stow.

## Deploy

```bash
git clone https://github.com/yugaaank/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow hypr kitty nvim fish starship fastfetch
```

Remove with `stow -D <package>`.

## Tweak it

Configs are split: `hypr/` is core, `hypr/custom/` is your playground.

- Keybinds: `~/.config/hypr/custom/keybinds.conf`
- Monitors: `~/.config/hypr/custom/monitors.conf`
- Startup: `~/.config/hypr/custom/execs.conf`

## Keybinds

- `SUPER + Return` -- Kitty
- `SUPER + Q` -- kill window
- `SUPER + F` -- fullscreen
- `SUPER + B` -- toggle floating
- `SUPER + H/J/K/L` -- move focus
- `SUPER + SHIFT + H/J/K/L` -- move window

## Security

Don't commit secrets. Use gnome-keyring or `pass`.
