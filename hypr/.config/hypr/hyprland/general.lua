-- Core Hyprland configuration settings, animations, and hardware options.

-- --- Core Configuration ---
hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 5,
		gaps_workspaces = 50,
		border_size = 0,
		col = {
			active_border = "rgba(ff0000ff)",
			inactive_border = "rgba(00ff00ff)",
		},
		resize_on_border = true,
		no_focus_fallback = true,
		allow_tearing = true,
		snap = {
			enabled = true,
			window_gap = 4,
			monitor_gap = 5,
			respect_gaps = true,
		},
		layout = "master",
	},
	dwindle = {
		preserve_split = true,
		smart_split = false,
		smart_resizing = false,
		precise_mouse_move = true,
	},
	gestures = {
		workspace_swipe_distance = 350,
		workspace_swipe_cancel_ratio = 0.15,
		workspace_swipe_min_speed_to_force = 4,
		workspace_swipe_direction_lock = true,
		workspace_swipe_direction_lock_threshold = 10,
		workspace_swipe_create_new = true,
		workspace_swipe_forever = false,
		workspace_swipe_touch = true,
		workspace_swipe_use_r = false,
	},
	decoration = {
		rounding_power = 2.4,
		rounding = 0,
		dim_inactive = false,
		dim_strength = 0.05,
		dim_special = 0.07,
		inactive_opacity = 1.0,
		blur = {
			enabled = true,
			xray = false,
			special = true,
			new_optimizations = true,
			size = 6,
			passes = 3,
			brightness = 1,
			noise = 0.01,
			contrast = 0.9,
			vibrancy = 0.6,
			vibrancy_darkness = 0.5,
			popups = true,
			popups_ignorealpha = 0.6,
			input_methods = true,
			input_methods_ignorealpha = 0.8,
		},
		shadow = {
			enabled = true,
			range = 20,
			offset = "0 4",
			render_power = 3,
			color = "rgba(00000033)",
		},
	},
	animations = {
		enabled = true,
	},
	input = {
		kb_layout = "us",
		numlock_by_default = true,
		repeat_delay = 250,
		repeat_rate = 35,
		follow_mouse = 1,
		off_window_axis_events = 2,
		accel_profile = "adaptive",
	},
	misc = {
		disable_hyprland_logo = false,
		disable_splash_rendering = true,
		vrr = 1,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
		animate_manual_resizes = true,
		animate_mouse_windowdragging = true,
		enable_swallow = false,
		swallow_regex = "(foot|kitty|allacritty|Alacritty)",
		on_focus_under_fullscreen = 2,
		allow_session_lock_restore = true,
		session_lock_xray = true,
		initial_workspace_tracking = false,
		focus_on_activate = true,
		force_default_wallpaper = 0,
	},
	binds = {
		scroll_event_delay = 0,
		hide_special_on_workspace_change = true,
	},
	cursor = {
		zoom_factor = 1,
		zoom_rigid = false,
		zoom_disable_aa = true,
		hotspot_padding = 1,
		enable_hyprcursor = true,
		no_hardware_cursors = 2,
	},
})

-- --- Monitor Setup ---
hl.monitor({
	output = "eDP-1",
	mode = "1920x1200@60.00Hz",
	position = "0x0",
	scale = 1,
	cm = "srgb",
})

-- --- Gestures ---
hl.gesture({ fingers = 3, direction = "swipe", action = "move" })
hl.gesture({ fingers = 3, direction = "pinch", action = "float" })
hl.gesture({ fingers = 4, direction = "vertical", action = "workspace" })

-- --- Animation Curves ---
hl.curve("md3_decel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1.0 } } })
hl.curve("md3_accel", { type = "bezier", points = { { 0.3, 0.0 }, { 0.8, 0.15 } } })
hl.curve("menu_decel", { type = "bezier", points = { { 0.1, 1.0 }, { 0.0, 1.0 } } })
hl.curve("quickOut", { type = "bezier", points = { { 0.1, 1.0 }, { 0.0, 1.0 } } })
hl.curve("overshot", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })

-- --- Window & Workspace Animations ---
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.5, bezier = "overshot", style = "popin 80%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 4, bezier = "md3_decel" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 9, bezier = "quickOut", style = "popin 90%" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 9, bezier = "quickOut" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 8, bezier = "quickOut", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 8, bezier = "menu_decel" })

hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "menu_decel", style = "popin 85%" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 9, bezier = "quickOut", style = "popin 90%" })

hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 4, bezier = "menu_decel" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 9, bezier = "quickOut" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "quickOut", style = "slidevert" })

hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 4.5, bezier = "md3_decel", style = "slidefadevert 20%" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 9, bezier = "quickOut", style = "slidefadevert 20%" })

-- --- Device Overrides ---
hl.device({
	name = "asue1306:00-04f3:3284-touchpad",
	natural_scroll = true,
	tap_to_click = true,
	accel_profile = "adaptive",
	sensitivity = 0.3,
	scroll_factor = 1.5,
})
