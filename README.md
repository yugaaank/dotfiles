# 💠 dotfiles

Clean, mean, and mildly opinionated. This is a dotfiles collection for people who like Hyprland, Noctalia v5, and not wasting time on mediocre setups.

Badges: Hyprland, Noctalia v5, Fish, Neovim, Kitty — pick your poison.

---

## What this is

A lean, modular config for Arch with Hyprland as the compositor and Noctalia v5 as the shell/UI. If you show up with anything else, expect friction.

## The stack (short)

- Hyprland — tiling, smooth, and fast.
- Noctalia v5 — this is the shell/UI this repo was designed around. Hyprland here expects Noctalia v5.
- Fish + Starship — because your shell should be readable and not cry on startup.
- Neovim (LazyVim) — sane defaults, not a religion.
- Kitty — GPU terminal; yes, it matters.

## Install (Arch)

Yes, this is for Arch. If you're not on Arch, adapt intelligently.

```bash
sudo pacman -S --needed hyprland hypridle hyprlock stow fish kitty neovim starship zoxide fzf wl-clipboard gnome-keyring
# AUR-only pieces (example):
your-aur-helper -S fastfetch bun
```

Backup your old ~/.config before running stow unless you enjoy surprises.

Deploy (example):

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow hypr kitty nvim fish starship fastfetch
# to remove: stow -D hypr
```

## Tweak it

Configs are split: `hyprland/` is core, `custom/` is your playground. Change keybinds, monitors, or startup scripts there.

Quick pointers:
- Keybinds: ~/.config/hypr/custom/keybinds.conf
- Monitors: ~/.config/hypr/custom/monitors.conf
- Startup: ~/.config/hypr/custom/execs.conf

Important: Hyprland here is wired to work with Noctalia v5 only. Use anything else and you'll be manually fixing things. Fun? Maybe. Efficient? Not really.

## Shortcuts (the essentials)

- SUPER + Return — open Kitty
- SUPER + Q — kill focused window
- SUPER + F — toggle fullscreen
- SUPER + B — toggle floating
- SUPER + H/J/K/L — move focus
- SUPER + SHIFT + H/J/K/L — move window

## Security & secrets

Don't commit keys. Use gnome-keyring, pass, or your secret manager of choice. There's a known reference to a Kitty remote password variable in the fish configs — treat it like an actual secret.

## Quick bootstrap

1. Clone the repo and cd into it.
2. Install the packages above.
3. Run the stow command for the packages you want.
4. If something breaks, open an issue or fix it yourself and PR — both accepted.

---

If you want the README polished for public consumption (screenshots, bling, or an onboarding GIF), say the word and I'll add something tasteful. Or tasteless, your call.
