-- This file sources other files in `hyprland` and `custom` folders.
-- You wanna add your stuff in files in `custom`.

-- Make floating windows remember manual resizes.
hl.window_rule({
	match = {
		float = 1,
	},
	persistent_size = true,
})

-- Default floating window size for normal app windows.
-- Specific rules in the split Lua modules can override this.
hl.window_rule({
	match = {
		class = "^(.*)$",
	},
	float = true,
	center = true,
	size = "1200 800",
})

-- Environment variables
require("hyprland.env")

-- Defaults
require("hyprland.execs")
require("hyprland.general")
require("hyprland.rules")
require("hyprland.colors")
require("hyprland.keybinds")

-- Custom
require("custom.execs")
require("custom.general")
require("custom.rules")
require("custom.keybinds")

-- nwg-displays support
require("custom.workspaces")
require("custom.monitors")
require("hyprland-gui")
