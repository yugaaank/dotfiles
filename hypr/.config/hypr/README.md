# Hypr Config

Personal Hyprland setup with split config files for Hyprland, Hyprlock, and Hypridle.

- `hyprland.conf` is the main entry point.
- `hyprland/` contains the default config, keybinds, rules, colors, execs, and helper scripts.
- `custom/` contains user overrides for monitors, workspaces, keybinds, rules, env, and startup commands.
- `hyprlock.conf` and `hypridle.conf` configure lock screen and idle behavior.

Edit files under `custom/` for personal changes, then reload Hyprland:

```sh
hyprctl reload
```
