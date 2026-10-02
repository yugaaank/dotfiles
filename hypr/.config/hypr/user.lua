-- --- hypr/user.lua --------------------------------------------------------
-- Your Hyprland overrides. Loaded LAST, so anything here wins over Ryoku's
-- defaults, Ryoku Settings (settings.lua), and HyprMod (hyprland-gui.lua).
-- Updates never touch it.
--
-- --- who owns what --------------------------------------------------------
--   Ryoku defaults   the base modules           replaced by updates   don't edit
--   Ryoku Settings   settings.lua               the GUI writes these  edit in-app
--   HyprMod          hyprland-gui.lua           managed by HyprMod    don't edit
--   you              this file                  yours                 edit here
--
-- --- personal overrides ----------------------------------------------------
-- These ALWAYS win, even over the GUI. Change them here, not in the GUI.
-- Everything else (gaps, borders, decoration, cursor, animations) is
-- controlled by the GUI and lives in settings.lua.

hl.config({
	input = {
		follow_mouse = 1,
		touchpad = {
			tap_to_click = true,
			drag_lock = true,
		},
	},
})

require("hyprland-gui")
