-- See https://wiki.hyprland.org/Configuring/Binds/

-- !

-- #! User
-- hl.bind("Ctrl+Super+Alt + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.conf"))

-- #! Window

-- #! Apps

-- Add stuff here
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("walker"))
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
