-- Lines ending with `# [hidden]` won't be shown on cheatsheet

-- Lines starting with #! are section headings

-- !

-- #! Shell

-- Noctalia Core Modules
hl.bind("SUPER + Super_L", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"), {
	release = true,
})
hl.bind("SUPER + D", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))
hl.bind("SUPER + PERIOD", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher /emo"))
hl.bind("SUPER + N", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center"))

hl.bind("SUPER + COMMA", hl.dsp.exec_cmd("noctalia msg panel-toggle wallpaper"))

-- System Utilities
hl.bind("SUPER + I", hl.dsp.exec_cmd("noctalia msg settings-toggle"))
hl.bind("SUPER + TAB", hl.dsp.exec_cmd("noctalia msg window-switcher"))
hl.bind("SUPER + ESCAPE", hl.dsp.exec_cmd("noctalia msg panel-toggle session"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher /cmd"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("noctalia msg screenshot-region"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd("noctalia msg screenshot-fullscreen"))

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
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("noctalia msg volume-up"), {
	locked = true,
	repeating = true,
})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("noctalia msg volume-down"), {
	locked = true,
	repeating = true,
})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("noctalia msg volume-mute"), {
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
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("noctalia msg media toggle"), {
	locked = true,
})
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("noctalia msg media next"), {
	locked = true,
})
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("noctalia msg media previous"), {
	locked = true,
})

-- !

-- #! Session
hl.bind("SUPER + L", hl.dsp.exec_cmd("noctalia msg session lock"))
hl.bind("switch:Lid Switch", hl.dsp.exec_cmd("noctalia msg session lock"), {
	locked = true,
})
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("noctalia msg dpms-off"), {
	locked = true,
})
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("noctalia msg dpms-on"), {
	locked = true,
})

-- !

-- #! Apps
hl.bind("SUPER + Return", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("GDK_DISABLE=vulkan nautilus --new-window --no-desktop"))

-- !

-- #! User
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"))

hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"))
hl.bind("CTRL + SHIFT + Escape", hl.dsp.exec_cmd("kitty -e btop"))
hl.bind("SUPER + H", hl.dsp.window.fullscreen())
hl.bind("SUPER + R", hl.dsp.exec_cmd("sh -c 'pkill noctalia; sleep 0.5; noctalia'"))

-- noctalia commands
hl.bind("SUPER + ALT + N", hl.dsp.exec_cmd("noctalia msg nightlight-toggle"))
hl.bind("SUPER + ALT + D", hl.dsp.exec_cmd("noctalia msg notification-dnd-toggle"))
hl.bind("SUPER + ALT + T", hl.dsp.exec_cmd("noctalia msg theme-mode-toggle"))

-- Keybindings
hl.bind("ALT + Tab", hl.dsp.exec_cmd("snappy-switcher next --mod alt"))
hl.bind("ALT + SHIFT + Tab", hl.dsp.exec_cmd("snappy-switcher prev --mod alt"))
hl.bind("SUPER + W", hl.dsp.exec_cmd("zen-browser"))
