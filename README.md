# dotfiles

Arch Linux config for a terminal-centric Hyprland setup with Noctalia, Neovim, Zsh, Kitty, Starship, and more.

## The stack

- **Hyprland** — tiling Wayland compositor (modular config with animations, shaders, plugins)
- **Noctalia** — shell/UI (this repo is built around it)
- **Zsh + Starship** — shell and prompt
- **Neovim** (LazyVim) — editor with ryoku plugins
- **Kitty** — GPU-accelerated terminal with custom scripts and themes
- **Fastfetch** — system info display
- **Zed** — editor with Noctalia/Matugen themes
- **snappy-switcher** — app launcher

## Requirements

```bash
sudo pacman -S --needed hyprland hypridle hyprlock stow kitty neovim starship zoxide fzf wl-clipboard gnome-keyring zsh
yay -S noctalia-git
```

## Deploy

```bash
git clone https://github.com/yugaaank/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow hypr kitty zsh starship fastfetch noctalia zed nvim snappy-switcher
```

Remove a package with `stow -D <package>`.

**Important:** Backup your old `~/.config` before running stow for the first time.

## How Stow works

This repo uses [GNU Stow](https://www.gnu.org/software/stow/) to manage symlinks. Each tool's config lives in its own directory under `~/dotfiles/<pkg>/.config/...`. When you run `stow <pkg>`, Stow creates symlinks in `~/.config/` pointing to the actual files in the repo.

This means:
- Editing a file under `~/dotfiles/<pkg>/.config/...` edits your live config
- The repo is the source of truth
- Removing a stow package cleanly removes the symlinks

## Package contents

### hypr
Hyprland compositor config with modular structure:

- **Core:** `hyprland.lua`, `hyprland-gui.lua`, `settings.lua`, `rebinds.lua`
- **Modules:** animations (13 variants: air, bounce, dusky, exaggerated, fade, fast, hallucination, mechanical, minimal, rage, ryoku, slowmotion, plus disable), autostart, binds, decoration, displays, env, input, lid, misc, perf_saver, private, record, resize, ryoshot, window_rules
- **Shaders:** bone, grain, halftone, onebit, vignette
- **Plugins:** keysounds via hyprpm
- **User overrides:** `user.lua`, `monitors_user.lua`

### kitty
GPU terminal with themes and custom scripts:

- **Config:** `kitty.conf`, `user.conf`, `current-theme.conf`
- **Themes:** noctalia.conf, Matugen.conf
- **Scripts:** `search.py`, `scroll_mark.py`

### zsh
Shell config with multiple override files:

- **Core:** `.zshrc`
- **User overrides:** `user.zsh` (custom aliases/functions), `ryoku.zsh`, `rashin.zsh`

### nvim
LazyVim-based Neovim config:

- **Core:** `init.lua`, `lazyvim.json`, `lazy-lock.json`
- **Config:** `lua/config/` (autocmds, keymaps, lazy, options)
- **Plugins:** `lua/plugins/` — ryoku, aiwaku, base16, colorscheme, matugen, ryoku-dashboard, 99-ryoku-user
- **Extras:** `.neoconf.json`, `stylua.toml`

### zed
Zed editor with multiple themes:

- **Config:** `settings.json`, `tasks.json`, `keymap.json`
- **Themes:** noctalia.json, matugen.json, Perf.json

### starship
Prompt config: `starship.toml`

### fastfetch
System info config: `config.jsonc` with custom emblem and head images

### noctalia
Noctalia integration: `config.toml`, `plugins.json`, `colors.json`

### snappy-switcher
App launcher: `config.ini`, `themes/noctalia.ini`

## User overrides

Some configs support user-specific overrides that won't be overwritten by updates:

- **Zsh:** `~/.config/zsh/user.zsh` — load custom aliases, functions, env vars
- **Hyprland:** `~/.config/hypr/user.lua` — custom Hyprland settings
- **Hyprland monitors:** `~/.config/hypr/monitors_user.lua` — custom monitor setup

Create these files if they don't exist; they're sourced automatically.

## Keybinds

| Key | Action |
|-----|--------|
| `SUPER + Return` | Launch Kitty |
| `SUPER + Q` | Kill window |
| `SUPER + F` | Toggle fullscreen |
| `SUPER + B` | Toggle floating |
| `SUPER + H/J/K/L` | Move focus |
| `SUPER + SHIFT + H/J/K/L` | Move window |

## Security

- **Never commit secrets** (passwords, API keys, tokens) to this repo
- Use **gnome-keyring** for UI app secrets (auto-unlocked on login)
- Use **pass** (password-store) for CLI tool secrets
- Keep sensitive config in user override files (`user.zsh`, `user.lua`, `monitors_user.lua`) that are gitignored

## Troubleshooting

**Stow complains about existing files:**
```bash
# Remove conflicting symlinks or files first
rm -rf ~/.config/<conflicting-dir>
stow -R <package>  # restow after fixing
```

**Config not taking effect:**
- Verify the symlink exists: `ls -la ~/.config/<tool>`
- Restart the relevant service (e.g. `systemctl --user restart hyprland.service`)

**Wrong stylization or missing config:**
- Check that the package was stowed: `stow -l` lists all active stow packages
- Re-run `stow <package>` to refresh symlinks

## Structure

```
~/dotfiles/
├── hypr/              # Hyprland: modules, shaders, plugins, core configs
├── kitty/             # Kitty: config, themes, Python scripts
├── zsh/               # Zsh: .zshrc + user overrides (user, ryoku, rashin)
├── nvim/              # Neovim/LazyVim: config, plugins, ryoku integration
├── zed/               # Zed: settings, keymap, tasks, themes
├── starship/          # Starship prompt config
├── fastfetch/         # Fastfetch config + images
├── noctalia/          # Noctalia integration
└── snappy-switcher/   # App launcher config + themes
```
