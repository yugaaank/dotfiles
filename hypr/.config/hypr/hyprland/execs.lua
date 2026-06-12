-- Bar, wallpaper
hl.on("hyprland.start", function()
	hl.exec_cmd("~/.config/hypr/hyprland/scripts/start_geoclue_agent.sh")
	hl.exec_cmd("noctalia & disown")
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
	hl.exec_cmd("nautilus --gapplication-service >/dev/null 2>&1 & disown")
end)

-- Clipboard: history
hl.on("hyprland.start", function()
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)

-- Cursor
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprctl setcursor MacTahoe 26")
	hl.exec_cmd("gsettings set org.gnome.desktop.peripherals.mouse acceleration-profile 'flat'")
	hl.exec_cmd("gsettings set org.gnome.desktop.peripherals.touchpad acceleration-profile 'flat'")
end)
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprctl setcursor MacTahoe 26")
	hl.exec_cmd("gsettings set org.gnome.desktop.peripherals.mouse acceleration-profile 'flat'")
	hl.exec_cmd("gsettings set org.gnome.desktop.peripherals.touchpad acceleration-profile 'flat'")

	hl.exec_cmd("canvasd")
end)
