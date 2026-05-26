# 💠 dotfiles

A modular, aesthetic, and high-performance dotfiles configuration for **Arch Linux**, centered around **Hyprland** and a custom **ambxst** UI suite.

![Hyprland](https://img.shields.io/badge/WM-Hyprland-blue?style=for-the-badge&logo=hyprland)
![Shell](https://img.shields.io/badge/Shell-Fish-orange?style=for-the-badge&logo=fish)
![Editor](https://img.shields.io/badge/Editor-Neovim-green?style=for-the-badge&logo=neovim)
![Terminal](https://img.shields.io/badge/Terminal-Kitty-lightgrey?style=for-the-badge&logo=kitty)

---

## 🚀 Key Components

- **Window Manager**: [Hyprland](https://hyprland.org/) - A dynamic tiling Wayland compositor with smooth animations and modular config.
- **UI Suite**: **ambxst** - A custom desktop interaction layer handling the bar, notch, dock, dashboard, and AI assistant.
- **Shell**: [Fish](https://fishshell.com/) with [Starship](https://starship.rs/) prompt, [Zoxide](https://github.com/ajeetdsouza/zoxide), and [FZF](https://github.com/junegunn/fzf).
- **Editor**: [Neovim](https://neovim.io/) - Powered by [LazyVim](https://www.lazyvim.org/) with Tokyonight Storm and transparent backgrounds.
- **Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/) - Fast, GPU-based terminal with custom search kittens.

## 🛠️ Installation

These dotfiles are managed using [GNU Stow](https://www.gnu.org/software/stow/).

### 1. Prerequisites

Ensure you have the following installed:
- `hyprland`, `hypridle`, `hyprlock`
- `stow`, `fish`, `kitty`, `neovim`, `starship`, `zoxide`, `fzf`
- `bun` (Runtime for UI components)
- `wl-clipboard`, `cliphist` (Clipboard management)
- `gnome-keyring` (Secret storage)

### 2. Setup

```bash
# Clone the repository
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Deploy packages
stow hypr kitty nvim fish starship ambxst fastfetch
```

## 🎨 Customization

### Hyprland
The configuration is split into `hyprland/` (core logic) and `custom/` (personal tweaks). 
- **Keybinds**: Edit `~/.config/hypr/custom/keybinds.conf`
- **Monitors**: Edit `~/.config/hypr/custom/monitors.conf`
- **Startup**: Edit `~/.config/hypr/custom/execs.conf`

### ambxst UI
The `ambxst` suite is a powerful utility layer. Use `ambxst run <module>` or the following keybinds:

| Shortcut | Action |
| --- | --- |
| `SUPER` (Tap) | App Launcher |
| `SUPER` + `D` | Dashboard |
| `SUPER` + `A` | AI Assistant |
| `SUPER` + `V` | Clipboard History |
| `SUPER` + `TAB` | Window Overview |
| `SUPER` + `.` | Emoji Picker |
| `SUPER` + `,` | Wallpaper Selector |
| `SUPER` + `N` | Notes Module |
| `SUPER` + `S` | Quick Tools |
| `SUPER` + `ESC` | Power Menu |

## ⌨️ Window Management

| Shortcut | Action |
| --- | --- |
| `SUPER` + `Q` | Close Active Window |
| `SUPER` + `Return` | Open Kitty |
| `SUPER` + `F` | Toggle Fullscreen |
| `SUPER` + `B` | Toggle Floating |
| `SUPER` + `H/J/K/L` | Move Focus (Vim-style) |
| `SUPER` + `SHIFT` + `H/J/K/L` | Move Window |
| `SUPER` + `1-0` | Switch Workspace |

---

> [!TIP]
> Use the `fsh` alias in Fish to quickly jump into your shell configuration, and `so` to apply changes instantly.
