-- --- hypr/user.lua --------------------------------------------------------
-- Your Hyprland overrides, in Ryoku's `hl` Lua API. Loaded LAST, so anything
-- here wins over Ryoku's defaults and over Ryoku Settings. Updates never touch
-- it. Reach for it only for raw config the GUI does not expose.
--
-- --- who owns what --------------------------------------------------------
--   Ryoku defaults   the base modules           replaced by updates   don't edit
--   Ryoku Settings   settings.lua, rebinds.lua  the GUI writes these  edit in-app
--   you              this file (edit it here); whole-file forks in user_edits  yours
--
-- --- take over a whole module ---------------------------------------------
-- Copy it into the overlay at the same path and edit there, e.g.
--   ~/.config/ryoku/user_edits/hypr/modules/binds.lua
-- You then own that file: `ryoku doctor` warns when an update changes the
-- original, and `ryoku reset hypr/modules/binds.lua` hands it back.
--
-- --- examples -------------------------------------------------------------
-- hl.bind("SUPER + SHIFT + T", hl.dsp.exec_cmd("kitty"))
-- hl.window_rule({ name = "float-mpv", match = { class = "mpv" }, float = true })
-- hl.config({ general = { border_size = 3 } })

-- --- change border width of tiled windows ----------------------------------
hl.bind("SUPER + Up",    hl.dsp.exec_cmd("hyprctl keyword general:border_size $(($(hyprctl getoption general:border_size -j | jq '.int') + 1))"))
hl.bind("SUPER + Down",  hl.dsp.exec_cmd("hyprctl keyword general:border_size $(($(hyprctl getoption general:border_size -j | jq '.int') - 1))"))
hl.bind("SUPER + Left",  hl.dsp.exec_cmd("hyprctl keyword general:border_size 0"))
hl.bind("SUPER + Right", hl.dsp.exec_cmd("hyprctl keyword general:border_size 3"))

-- --- 4-finger swipe to change workspace (vertical) -------------------------
hl.gesture({ fingers = 4, direction = "vertical", action = "workspace" })

-- workspace transition animation: vertical slide
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "default", style = "slidevert" })

-- --- snappy-switcher (window switcher) --------------------------------------
hl.on("hyprland.start", function()
  hl.exec_cmd("snappy-switcher --daemon")
end)

hl.bind("ALT + TAB",        hl.dsp.exec_cmd("snappy-switcher next --mod alt"))
hl.bind("ALT + SHIFT + TAB", hl.dsp.exec_cmd("snappy-switcher prev --mod alt"))

-- --- kitty: thin border ----------------------------------------------------
hl.window_rule({ match = { class = "kitty" }, border_size = 1 })

-- --- no border when single window on workspace -----------------------------
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.window_rule({
    name  = "no-border-single",
    match = { float = false, workspace = "w[tv1]" },
    border_size = 0,
})

-- kitty keeps its border even when alone
hl.window_rule({ match = { class = "kitty", workspace = "w[tv1]" }, border_size = 1 })

-- --- focus follows cursor --------------------------------------------------
hl.config({
  input = {
    follow_mouse = 1,
  },
})
