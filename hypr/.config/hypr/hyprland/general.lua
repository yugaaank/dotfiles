-- MONITOR CONFIG
hl.config({
	gestures = {
		workspace_swipe_distance = 700,
		workspace_swipe_cancel_ratio = 0.2,
		workspace_swipe_min_speed_to_force = 5,
		workspace_swipe_direction_lock = true,
		workspace_swipe_direction_lock_threshold = 10,
		workspace_swipe_create_new = true,
		workspace_swipe_forever = false,
		workspace_swipe_touch = true,
		workspace_swipe_use_r = false,
	},
})

hl.monitor({
	output = "eDP-1",
	mode = "1920x1200@60.00Hz",
	position = "0x0",
	scale = 1,
	cm = "srgb",
})
hl.gesture({
	fingers = 3,
	direction = "swipe",
	action = "move",
})
hl.gesture({
	fingers = 3,
	direction = "pinch",
	action = "float",
})
hl.gesture({
	fingers = 4,
	direction = "horizontal",
	action = "workspace",
})

-- Gaps and border
hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 5,
		gaps_workspaces = 50,
		border_size = 0,
		col = {
			active_border = "rgba(00000000)",
			inactive_border = "rgba(00000000)",
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
})

-- 2 = circle, higher = squircle, 4 = very obvious squircle

-- Clear squircles look really off; we use only extra .4 here to make the rounding feel more continuous
hl.config({
	decoration = {
		rounding_power = 2.4,
		rounding = 12,
		blur = {
			enabled = true,
			xray = false,
			special = true,
			new_optimizations = true,
			size = 10,
			passes = 10,
			brightness = 1,
			noise = 0.02,
			contrast = 0.89,
			vibrancy = 0.5,
			vibrancy_darkness = 0.5,
			popups = true,
			popups_ignorealpha = 0.6,
			input_methods = true,
			input_methods_ignorealpha = 0.8,
		},
		shadow = {
			enabled = true,
		},
	},
})

-- ignore_window = true
hl.config({
	decoration = {
		shadow = {
			range = 50,
			offset = "0 4",
			render_power = 10,
			color = "rgba(00000027)",
		},
	},
})

-- Dim
hl.config({
	decoration = {
		dim_inactive = false,
		dim_strength = 0.05,
		dim_special = 0.07,
		inactive_opacity = 1.0,
	},
	animations = {
		enabled = true,
	},
})

-- Curves tuned for a subtler macOS-like feel across the shell.
hl.curve("macIn", { type = "bezier", points = { { 0.22, 1.0 }, { 0.36, 1.0 } } })
hl.curve("macOut", { type = "bezier", points = { { 0.4, 0.0 }, { 0.9, 1.0 } } })
hl.curve("macMove", { type = "bezier", points = { { 0.2, 0.9 }, { 0.3, 1.0 } } })

-- Configs

-- windows
hl.animation({
	leaf = "windowsIn",
	enabled = true,
	speed = 5,
	bezier = "macIn",
	style = "popin 93%",
})
hl.animation({
	leaf = "fadeIn",
	enabled = true,
	speed = 5,
	bezier = "macIn",
})
hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 2,
	bezier = "macOut",
	style = "popin 93%",
})
hl.animation({
	leaf = "fadeOut",
	enabled = true,
	speed = 2,
	bezier = "macOut",
})
hl.animation({
	leaf = "windowsMove",
	enabled = true,
	speed = 3,
	bezier = "macMove",
	style = "slide",
})
hl.animation({
	leaf = "border",
	enabled = true,
	speed = 3,
	bezier = "macMove",
})

-- layers
hl.animation({
	leaf = "layersIn",
	enabled = true,
	speed = 4,
	bezier = "macIn",
	style = "slide top",
})
hl.animation({
	leaf = "layersOut",
	enabled = true,
	speed = 2,
	bezier = "macOut",
	style = "slide top",
})

-- fade
hl.animation({
	leaf = "fadeLayersIn",
	enabled = true,
	speed = 4,
	bezier = "macIn",
})
hl.animation({
	leaf = "fadeLayersOut",
	enabled = true,
	speed = 2,
	bezier = "macOut",
})

-- workspaces
hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 4,
	bezier = "macMove",
	style = "slidefade",
})

-- specialWorkspace
hl.animation({
	leaf = "specialWorkspaceIn",
	enabled = true,
	speed = 4,
	bezier = "macIn",
	style = "slidefadevert",
})
hl.animation({
	leaf = "specialWorkspaceOut",
	enabled = true,
	speed = 2,
	bezier = "macOut",
	style = "slidefadevert",
})

-- zoom
hl.config({
	input = {
		kb_layout = "us",
		numlock_by_default = true,
		repeat_delay = 250,
		repeat_rate = 35,
		follow_mouse = 1,
		off_window_axis_events = 2,
	},
	misc = {
		disable_hyprland_logo = false,
		disable_splash_rendering = true,
	},
})

--hl.animation({
--	leaf = "zoomFactor",
--	enabled = true,
--	speed = 3,
--	bezier = "emphasizedDecel",
--})
-- vfr = 1
hl.config({
	misc = {
		vrr = 1,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
		animate_manual_resizes = false,
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
		no_hardware_cursors = 0,
	},
})

hl.device({
	name = "asue1306:00-04f3:3284-touchpad",
	natural_scroll = true,
	tap_to_click = true,
	accel_profile = "flat",
	sensitivity = 0.6,
})
