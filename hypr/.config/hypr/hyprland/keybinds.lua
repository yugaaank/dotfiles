-- Lines ending with `# [hidden]` won't be shown on cheatsheet

-- Lines starting with #! are section headings

-- !

-- #! Shell

-- Ambxst Core Modules
hl.bind("SUPER + Super_L", hl.dsp.exec_cmd("ambxst run launcher"), {
    release = true,
})
hl.bind("SUPER + D", hl.dsp.exec_cmd("ambxst run dashboard"))
hl.bind("SUPER + A", hl.dsp.exec_cmd("ambxst run assistant"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("ambxst run clipboard"))
hl.bind("SUPER + PERIOD", hl.dsp.exec_cmd("ambxst run emoji"))
hl.bind("SUPER + N", hl.dsp.exec_cmd("ambxst run notes"))

-- bind = SUPER, T, exec, ambxst run tmux # Tmux manager
hl.bind("SUPER + COMMA", hl.dsp.exec_cmd("ambxst run wallpapers"))

-- System Utilities
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("ambxst run config"))
hl.bind("SUPER + TAB", hl.dsp.exec_cmd("ambxst run overview"))
hl.bind("SUPER + ESCAPE", hl.dsp.exec_cmd("ambxst run powermenu"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("ambxst run tools"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("ambxst run screenshot"))
hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd("ambxst run screenrecord"))
hl.bind("SUPER + SHIFT + A", hl.dsp.exec_cmd("ambxst run lens"))
hl.bind("SUPER + CTRL + ALT + B", hl.dsp.exec_cmd("ambxst quit"))

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


-- bind = SUPER, Z, workspace, -1 # Previous workspace
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
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("ambxst brightness +5"), {
    locked = true,
    repeating = true,
})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("ambxst brightness -5"), {
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
hl.bind("SUPER + L", hl.dsp.exec_cmd("loginctl lock-session"))
hl.bind("switch:Lid Switch", hl.dsp.exec_cmd("loginctl lock-session"), {
    locked = true,
})
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("axctl monitor set-dpms 0 0"), {
    locked = true,
})
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("axctl monitor set-dpms 0 1"), {
    locked = true,
})

-- !

-- #! Apps
hl.bind("SUPER + Return", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("GDK_DISABLE=vulkan nautilus --new-window --no-desktop"))

-- !

-- #! User
-- Dual Shell Bind system: Toggle 'use_noctalia' to switch primary shell
local use_noctalia = true

local function dual_bind(key, noctalia_call, ambxst_call)
	local n_cmd = "qs -c noctalia-shell ipc call " .. noctalia_call
	local a_cmd = "ambxst run " .. ambxst_call

	if use_noctalia then
		hl.bind("SUPER + " .. key, hl.dsp.exec_cmd(n_cmd))
		hl.bind("SUPER + ALT + " .. key, hl.dsp.exec_cmd(a_cmd))
	else
		hl.bind("SUPER + " .. key, hl.dsp.exec_cmd(a_cmd))
		hl.bind("SUPER + ALT + " .. key, hl.dsp.exec_cmd(n_cmd))
	end
end

-- Syncing binds to match Niri config
dual_bind("D", "controlCenter toggle", "dashboard")
dual_bind("V", "launcher clipboard", "clipboard")
dual_bind("PERIOD", "launcher emoji", "emoji")
dual_bind("N", "notifications toggleHistory", "notes")
dual_bind("COMMA", "wallpaper toggle", "wallpapers")
dual_bind("S", "launcher command", "tools")
dual_bind("SHIFT + C", "settings toggle", "config")
dual_bind("ESCAPE", "sessionMenu toggle", "powermenu")
dual_bind("L", "lockScreen lock", "lock")

-- Launcher handling
if use_noctalia then
	hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call launcher toggle"))
end

hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"))
hl.bind("CTRL + SHIFT + Escape", hl.dsp.exec_cmd("kitty -e btop"))
hl.bind("SUPER + H", hl.dsp.window.fullscreen())
hl.bind("SUPER + R", hl.dsp.exec_cmd("ambxst reload"))

-- Start the daemon on login
hl.on("hyprland.start", function()
	hl.exec_cmd("snappy-switcher --daemon")
end)

-- Keybindings
hl.bind("ALT + Tab", hl.dsp.exec_cmd("snappy-switcher next"))
hl.bind("ALT + SHIFT + Tab", hl.dsp.exec_cmd("snappy-switcher prev"))
hl.bind("SUPER + SHIFT + RETURN", hl.dsp.exec_cmd("zen-browser"))
