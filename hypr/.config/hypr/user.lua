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
--
-- --- scroll tuning --------------------------------------------------------
-- scroll_factor scales how far one unit of wheel/touchpad scroll travels.
-- Lower = slower. 1.0 is Hyprland's default.
--
-- Why here and not the GUI: hyprland-gui.lua (HyprMod) loaded after
-- settings.lua and kept re-applying its own touchpad scroll_factor = 0.7,
-- silently discarding what Ryoku Settings wrote (the Hub showed 0.8 while the
-- compositor used 0.7). user.lua loads last and wins over both, so these are
-- the values actually in effect. If you change scroll in Ryoku Settings
-- (Super + ,) -> Input, settings.lua updates but these still win -- edit here.

hl.config({
	input = {
		follow_mouse = 1,
		-- mouse wheel
		scroll_factor = 0.5,
		sensitivity = 0,
		touchpad = {
			tap_to_click = true,
			drag_lock = true,
			natural_scroll = true,
			-- touchpad / two-finger scroll (matches mouse scroll_factor)
			scroll_factor = 0.5,
		},
	},
})

-- gamma/curve: warmer highlights, cooler shadows, reduced gamma
hl.exec_cmd("wl-gammactl-rust -c 1.060 -b 0.980 -g 0.890 -s 1.000")

-- zen-browser: always float at a fixed size, centered.
-- fit() caps the size to the monitor (same helper as window_rules.lua).
local function fit(w, h)
	return {
		"min(" .. w .. ", monitor_w * 0.92)",
		"min(" .. h .. ", monitor_h * 0.88)",
	}
end

hl.window_rule({
	name = "float-zen-browser",
	match = { class = "zen" },
	float = true,
	size = fit(1700, 1100),
	center = true,
})

-- Single tiled window on a workspace: no inner/outer gaps, no border.
-- w[tv1] matches a workspace with one tiled window (t=tiled, v=visible, 1=count).
-- Gaps are a workspace property; border_size is a window property, so it needs
-- the matching window rule on the same selector.
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.window_rule({
	name        = "no-border-single-window",
	match       = { float = false, workspace = "w[tv1]" },
	border_size = 0,
})
