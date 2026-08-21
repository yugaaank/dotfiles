-- Startup applications and system services.

hl.on("hyprland.start", function()
	-- System environment & Keyring

	hl.exec_cmd("noctalia")
	hl.exec_cmd("dbus-update-activation-environment --all")
	hl.exec_cmd("sleep 1 && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")

	-- Core services
	hl.exec_cmd("hyprpm reload -n")
	hl.exec_cmd("hypridle")

	hl.exec_cmd('kitty --class fastfetch -e sh -c "clear && fetch; exec fish"')
	-- System utilities & helper scripts
	hl.exec_cmd("~/.config/hypr/hyprland/scripts/start_geoclue_agent.sh")
	hl.exec_cmd("~/.config/hypr/hyprland/scripts/welcome.sh")
	hl.exec_cmd("~/.config/hypr/hyprland/scripts/__restore_video_wallpaper.sh")

	-- Background services
	hl.exec_cmd("easyeffects --hide-window --service-mode")
	hl.exec_cmd("elephant")
	hl.exec_cmd("snappy-switcher --daemon")
	hl.exec_cmd("kdeconnect-indicator")
	hl.exec_cmd("~/.cargo/bin/shy")

	-- Clipboard manager (cliphist)
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")

	-- Set cursor theme
	hl.exec_cmd("hyprctl setcursor macOS-White 24")
end)
