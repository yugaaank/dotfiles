-- Lines ending with # [hidden] won't be shown on cheatsheet

-- Lines starting with #! are section headings

-- !

-- #! Shell

-- Helper for dual noctalia support
local function noctalia_call(v4_call, v5_cmd)
	return hl.dsp.exec_cmd(string.format("qs -c noctalia-shell ipc call %s; noctalia msg %s", v4_call, v5_cmd))
end

-- Noctalia Shell Bindings
hl.bind("SUPER + SPACE", noctalia_call("launcher toggle", "panel-toggle launcher"))
hl.bind("SUPER + D", noctalia_call("controlCenter toggle", "panel-toggle control-center"))
hl.bind("SUPER + V", noctalia_call("launcher clipboard", "panel-toggle launcher /clipboard"))
hl.bind("SUPER + PERIOD", noctalia_call("launcher emoji", "panel-toggle launcher /emo"))
hl.bind("SUPER + N", noctalia_call("notifications toggleHistory", "panel-toggle control-center notifications"))
hl.bind("SUPER + COMMA", noctalia_call("wallpaper toggle", "panel-toggle wallpaper"))
hl.bind("SUPER + S", noctalia_call("launcher command", "panel-toggle launcher /run"))
hl.bind("SUPER + I", noctalia_call("settings toggle", "settings-toggle"))
hl.bind("SUPER + ESCAPE", noctalia_call("sessionMenu toggle", "panel-toggle session"))
hl.bind("SUPER + TAB", noctalia_call("launcher windows", "panel-toggle launcher /win"))
hl.bind("SUPER + R", noctalia_call("config reload", "config-reload"))

-- Screenshot & Record
hl.bind("SUPER + SHIFT + S", noctalia_call("plugin:screen-shot-and-record screenshot", "screenshot-region"))
hl.bind("Print", noctalia_call("plugin:screen-shot-and-record screenshot", "screenshot-region"))
hl.bind(
	"SUPER + SHIFT + R",
	noctalia_call("plugin:screen-shot-and-record record", "plugin screen-shot-and-record screenshot:bar-widget record")
)
hl.bind(
	"SUPER + SHIFT + A",
	noctalia_call("plugin:screen-shot-and-record ocr", "plugin screen-shot-and-record screenshot:bar-widget ocr")
)

-- !

-- #! Window
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.fullscreen())
hl.bind("SUPER + B", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + P", hl.dsp.window.pin())

-- Focus
hl.bind("SUPER + Left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + Right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + Up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + CTRL + H", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + CTRL + L", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + CTRL + K", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + CTRL + J", hl.dsp.focus({ direction = "down" }))

-- Move Window
hl.bind("SUPER + SHIFT + Left", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + Right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + Up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + Down", hl.dsp.window.move({ direction = "down" }))
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Resize Window
hl.bind("SUPER + ALT + Right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }), {
	repeating = true,
})
hl.bind("SUPER + ALT + Left", hl.dsp.window.resize({ x = -50, y = 0, relative = true }), {
	repeating = true,
})
hl.bind("SUPER + ALT + Up", hl.dsp.window.resize({ x = 0, y = -50, relative = true }), {
	repeating = true,
})
hl.bind("SUPER + ALT + Down", hl.dsp.window.resize({ x = 0, y = 50, relative = true }), {
	repeating = true,
})
hl.bind("SUPER + ALT + L", hl.dsp.window.resize({ x = 50, y = 0, relative = true }), {
	repeating = true,
})
hl.bind("SUPER + ALT + H", hl.dsp.window.resize({ x = -50, y = 0, relative = true }), {
	repeating = true,
})
hl.bind("SUPER + ALT + K", hl.dsp.window.resize({ x = 0, y = -50, relative = true }), {
	repeating = true,
})
hl.bind("SUPER + ALT + J", hl.dsp.window.resize({ x = 0, y = 50, relative = true }), {
	repeating = true,
})

-- Mouse Bindings
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), {
	mouse = true,
})
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), {
	mouse = true,
})

-- !

-- ##! Workspace

-- Navigation and Move to Workspace
for i = 1, 9 do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
	hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Sequential & Scroll
hl.bind("SUPER + X", hl.dsp.focus({ workspace = "+1" }))
hl.bind("SUPER + SHIFT + Z", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + X", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e+1" }))

-- Special Workspace
hl.bind("SUPER + SHIFT + V", hl.dsp.workspace.toggle_special(""))
hl.bind("SUPER + ALT + V", hl.dsp.window.move({ workspace = "special" }))

-- !

-- #! Media & Hardware
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 10%+"), {
	locked = true,
	repeating = true,
})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 10%-"), {
	locked = true,
	repeating = true,
})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), {
	locked = true,
	repeating = true,
})
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"), {
	locked = true,
	repeating = true,
})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), {
	locked = true,
	repeating = true,
})
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), {
	locked = true,
})
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), {
	locked = true,
})
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), {
	locked = true,
})

-- !

-- #! Session
hl.bind("SUPER + L", noctalia_call("lockScreen lock", "session lock"))
hl.bind("switch:Lid Switch", noctalia_call("lockScreen lock", "session lock"), {
	locked = true,
})

-- !

-- #! Apps
hl.bind("SUPER + T", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("kitty -e elio"))
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd("gtk-launch org.gnome.Nautilus"))
hl.bind("CTRL + SHIFT + Escape", hl.dsp.exec_cmd("kitty -e btop"))
hl.bind("SUPER + W", hl.dsp.exec_cmd("zen-browser"))

-- !

-- #! User
-- Start the daemon on login
hl.on("hyprland.start", function()
	hl.exec_cmd("snappy-switcher --daemon")
end)

-- Keybindings
hl.bind("ALT + Tab", hl.dsp.exec_cmd("snappy-switcher next"))
hl.bind("ALT + SHIFT + Tab", hl.dsp.exec_cmd("snappy-switcher prev"))
