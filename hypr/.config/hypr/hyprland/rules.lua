-- Window, Workspace, and Layer rules for Hyprland layout and behavior.

-- ==========================================
-- WINDOW RULES
-- ==========================================

-- --- Default/Base rules ---
hl.window_rule({
	match = {
		float = 1,
	},
	persistent_size = true,
	rounding = 5,
})

-- Disable blur for Xwayland context menus
hl.window_rule({
	match = {
		class = "^()$",
		title = "^()$",
	},
	no_blur = true,
})

-- No shadow for tiled windows
hl.window_rule({
	match = {
		float = 0,
	},
	no_shadow = true,
})

-- Fix JetBrains IDEs focus/rerendering issues
hl.window_rule({
	match = {
		class = "^jetbrains-.*$",
		float = 1,
		title = "^$|^\\s$|^win\\d+$",
	},
	no_initial_focus = true,
})

-- Picture-in-Picture window settings
hl.window_rule({
	match = {
		title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$",
	},
	float = true,
	keep_aspect_ratio = true,
	move = "(monitor_w*.73) (monitor_h*.72)",
	size = "(monitor_w*.25) (monitor_h*.25)",
	pin = true,
})

-- --- Floating & Centered File Dialogs (.5 of monitor size) ---
hl.window_rule({
	match = {
		title = "^(Open File|Select a File|Open Folder|Save As|File Upload)(.*)$|^.*(wants to save|wants to open)$",
	},
	center = true,
	float = true,
	size = "(monitor_w*.5) (monitor_h*.5)",
})

-- --- Specific App Floating Rules ---
hl.window_rule({
	match = {
		class = "^(org.gnome.Calculator)$",
	},
	float = true,
	size = "360 616",
})

hl.window_rule({
	match = {
		class = "^(org\\.gnome\\.Evince)$",
	},
	tile = true,
})

hl.window_rule({
	match = {
		class = "^(zen-browser)$",
	},
	float = true,
	center = true,
	size = "(monitor_w*.85) (monitor_h*.85)",
})

hl.window_rule({
	match = {
		class = "^(kitty)$",
		float = 1,
	},
	size = "900 530",
	persistent_size = false,
})

hl.window_rule({
	match = {
		class = "^(org\\.localsend\\.localsend_app)$",
	},
	float = true,
	size = "400 700",
})

hl.window_rule({
	match = {
		class = "^(pavucontrol|org.pulseaudio.pavucontrol|nm-connection-editor)$",
	},
	float = true,
	center = true,
	size = "(monitor_w*.45) (monitor_h*.45)",
})

hl.window_rule({
	match = {
		class = "^(org.freedesktop.impl.portal.desktop.kde)$",
	},
	float = true,
	size = "(monitor_w*.60) (monitor_h*.65)",
})

hl.window_rule({
	match = {
		class = "^(Zotero)$",
	},
	float = true,
	size = "(monitor_w*.45) (monitor_h*.45)",
})

hl.window_rule({
	match = {
		class = "^(org\\.gnome\\.Nautilus)$",
	},
	float = true,
	size = "850 500",
})

hl.window_rule({
	match = {
		class = "^(com\\.system76\\.CosmicFiles)$",
	},
	float = true,
	size = "957 558",
})

hl.window_rule({
	match = {
		class = "^(fastfetch)$",
	},
	float = true,
	center = true,
	size = "800 450",
})

hl.window_rule({
	match = {
		title = "^(Choose wallpaper)(.*)$",
	},
	center = true,
	float = true,
	size = "(monitor_w*.60) (monitor_h*.65)",
})

-- --- Simple Floating Rules ---
hl.window_rule({
	match = {
		class = "^(blueberry\\.py|guifetch)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = ".*(plasmawindowed|bluedevilwizard).*",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "kcm_.*",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = ".*(Welcome|Shell conflicts.*)",
	},
	float = true,
})

-- --- Utility and System Windows overrides ---
hl.window_rule({
	match = {
		class = "^(plasma-changeicons)$",
	},
	float = true,
	no_initial_focus = true,
	move = "999999 999999",
})

hl.window_rule({
	match = {
		title = "^(Copying — Dolphin)$",
	},
	move = "40 80",
})

-- --- Tearing / Immediate Rules ---
hl.window_rule({
	match = {
		title = ".*(\\.exe|minecraft.*)",
	},
	immediate = true,
})

hl.window_rule({
	match = {
		class = "^(steam_app).*",
	},
	immediate = true,
})


-- ==========================================
-- WORKSPACE RULES
-- ==========================================

hl.workspace_rule({
	workspace = "special:special",
	gaps_out = 30,
})


-- ==========================================
-- LAYER RULES
-- ==========================================

-- Enable xray blur for all layers
hl.layer_rule({
	match = {
		namespace = ".*",
	},
	xray = true,
})

-- Disable animations for selector, OSK and overlay layers
hl.layer_rule({
	match = {
		namespace = "^(walker|selection|overview|anyrun|osk|snappy-switcher|noanim)$",
	},
	no_anim = true,
})

-- Blur settings for panels, dock and OSK
hl.layer_rule({
	match = {
		namespace = "^(bar[0-9]*|barcorner.*|dock[0-9]*|osk[0-9]*)$",
	},
	blur = true,
	ignore_alpha = 0.6,
})

hl.layer_rule({
	match = {
		namespace = "indicator.*",
	},
	no_anim = true,
	blur = true,
	ignore_alpha = 0.6,
})

hl.layer_rule({
	match = {
		namespace = "gtk-layer-shell",
	},
	blur = true,
	ignore_alpha = 0,
})

hl.layer_rule({
	match = {
		namespace = "launcher",
	},
	blur = true,
	ignore_alpha = 0.5,
})

hl.layer_rule({
	match = {
		namespace = "notifications",
	},
	animation = "slide right",
	blur = true,
	ignore_alpha = 0.69,
})

hl.layer_rule({
	match = {
		namespace = "sideleft.*",
	},
	animation = "slide left",
})

hl.layer_rule({
	match = {
		namespace = "sideright.*",
	},
	animation = "slide right",
})

hl.layer_rule({
	match = {
		namespace = "session[0-9]*",
	},
	blur = true,
})

-- Noctalia UI framework layer rules
hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd)$",
	},
	no_anim = true,
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})
