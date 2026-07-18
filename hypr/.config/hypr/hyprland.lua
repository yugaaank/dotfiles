-- Main Hyprland configuration entry point.
-- Consolidated and simplified.

-- Environment variables
require("hyprland.env")

-- Core Configuration
require("hyprland.execs")
require("hyprland.general")
require("hyprland.rules")
require("hyprland.colors")
require("hyprland.keybinds")

-- Hardware & Display
require("hyprland.monitors")
require("hyprland.workspaces")

-- External GUI settings (HyprMod)
require("hyprland-gui")

-- This loads Noctalia-generated Hyprland colors.
dofile("/home/yugaaank/.config/hypr/noctalia/noctalia-colors.lua")

-- For Noctalia Color templates
require("noctalia").apply_theme()
