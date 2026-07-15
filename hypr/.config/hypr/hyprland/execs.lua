-- Bar, wallpaper
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpm reload -n")
	hl.exec_cmd("~/.config/hypr/hyprland/scripts/start_geoclue_agent.sh")
	hl.exec_cmd("noctalia")
	hl.exec_cmd("~/.config/hypr/hyprland/scripts/__restore_video_wallpaper.sh")
end)

-- Core components (authentication, lock screen, notification daemon)
hl.on("hyprland.start", function()
	hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("dbus-update-activation-environment --all")
	hl.exec_cmd("sleep 1 && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)

-- Audio & System Services
hl.on("hyprland.start", function()
	hl.exec_cmd("easyeffects --hide-window --service-mode")
	hl.exec_cmd("elephant")
	hl.exec_cmd("snappy-switcher --daemon")
	hl.exec_cmd("kdeconnect-indicator")
end)

-- Clipboard: history
hl.on("hyprland.start", function()
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)

-- Cursor
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprctl setcursor MacTahoe 26")
end)
