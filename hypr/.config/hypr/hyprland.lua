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

-- For Noctalia Color templates
require("noctalia")
