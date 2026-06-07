-- See https://wiki.hyprland.org/Configuring/Binds/

-- !

-- #! User
-- hl.bind("Ctrl+Super+Alt + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.conf"))

-- #! Shell
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

-- #! Window

-- #! Apps

-- Add stuff here
hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"))

-- Use #! to add an extra column on the cheatsheet

-- Use ##! to add a section in that column

-- Add a comment after a bind to add a description, like above
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
