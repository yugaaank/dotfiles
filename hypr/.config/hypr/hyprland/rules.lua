-- ######## Window rules ########

-- Default rules
hl.window_rule({
	match = {
		float = 1,
	},
	persistent_size = true,
})

hl.window_rule({
	match = {
		class = "^(.*)$",
	},
	float = true,
	center = true,
	size = "1200 800",
	border_size = 0,
})

-- Disable blur for xwayland context menus
hl.window_rule({
    match = {
        class = "^()$",
        title = "^()$",
    },
    no_blur = true,
})

-- Custom rules from user
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
    },
    size = "850 500",
})
hl.window_rule({
    match = {
        title = "^(archmenu)$",
    },
    float = true,
    center = true,
    size = "500 200",
})
hl.window_rule({
    match = {
        title = "^(archmenu-about)$",
    },
    float = true,
    center = true,
    size = "800 500",
})
hl.window_rule({
    match = {
        title = "^(archmenu-install)$",
    },
    float = true,
    center = true,
    size = "900 600",
})

-- Floating
hl.window_rule({
    match = {
        title = "^(Open File)(.*)$",
    },
    center = true,
    float = true,
    size = "(monitor_w*.7) (monitor_h*.7)",
})
hl.window_rule({
    match = {
        title = "^(Select a File)(.*)$",
    },
    center = true,
    float = true,
    size = "(monitor_w*.7) (monitor_h*.7)",
})
hl.window_rule({
    match = {
        title = "^(Choose wallpaper)(.*)$",
    },
    center = true,
    float = true,
    size = "(monitor_w*.60) (monitor_h*.65)",
})
hl.window_rule({
    match = {
        title = "^(Open Folder)(.*)$",
    },
    center = true,
    float = true,
    size = "(monitor_w*.7) (monitor_h*.7)",
})
hl.window_rule({
    match = {
        title = "^(Save As)(.*)$",
    },
    center = true,
    float = true,
    size = "(monitor_w*.7) (monitor_h*.7)",
})
hl.window_rule({
    match = {
        title = "^(Library)(.*)$",
    },
    center = true,
    float = true,
    size = "(monitor_w*.6) (monitor_h*.7)",
})
hl.window_rule({
    match = {
        title = "^(File Upload)(.*)$",
    },
    center = true,
    float = true,
    size = "(monitor_w*.7) (monitor_h*.7)",
})
hl.window_rule({
    match = {
        title = "^(.*)(wants to save)$",
    },
    center = true,
    float = true,
    size = "(monitor_w*.5) (monitor_h*.5)",
})
hl.window_rule({
    match = {
        title = "^(.*)(wants to open)$",
    },
    center = true,
    float = true,
    size = "(monitor_w*.5) (monitor_h*.5)",
})
hl.window_rule({
    match = {
        class = "^(blueberry\\.py)$",
    },
    float = true,
})
hl.window_rule({
    match = {
        class = "^(guifetch)$",
    },
    float = true,
})
hl.window_rule({
    match = {
        class = "^(pavucontrol)$",
    },
    float = true,
    size = "(monitor_w*.45) (monitor_h*.45)",
    center = true,
})
hl.window_rule({
    match = {
        class = "^(org.pulseaudio.pavucontrol)$",
    },
    float = true,
    size = "(monitor_w*.45) (monitor_h*.45)",
    center = true,
})
hl.window_rule({
    match = {
        class = "^(nm-connection-editor)$",
    },
    float = true,
    size = "(monitor_w*.45) (monitor_h*.45)",
    center = true,
})
hl.window_rule({
    match = {
        class = ".*plasmawindowed.*",
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
        class = ".*bluedevilwizard",
    },
    float = true,
})
hl.window_rule({
    match = {
        title = ".*Welcome",
    },
    float = true,
})
hl.window_rule({
    match = {
        title = ".*Shell conflicts.*",
    },
    float = true,
})
hl.window_rule({
    match = {
        class = "org.freedesktop.impl.portal.desktop.kde",
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

-- Move

-- kde-material-you-colors spawns a window when changing dark/light theme. This is to make sure it doesn't interfere at all.
hl.window_rule({
    match = {
        class = "^(plasma-changeicons)$",
    },
    float = true,
    no_initial_focus = true,
    move = "999999 999999",
})

-- stupid dolphin copy
hl.window_rule({
    match = {
        title = "^(Copying — Dolphin)$",
    },
    move = "40 80",
})

-- Tiling

-- windowrule = match:class ^dev\.warp\.Warp$, tile on

-- Picture-in-Picture
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

-- --- Tearing ---
hl.window_rule({
    match = {
        title = ".*\\.exe",
    },
    immediate = true,
})
hl.window_rule({
    match = {
        title = ".*minecraft.*",
    },
    immediate = true,
})
hl.window_rule({
    match = {
        class = "^(steam_app).*",
    },
    immediate = true,
})

-- Fix Jetbrain IDEs focus/rerendering problem
hl.window_rule({
    match = {
        class = "^jetbrains-.*$",
        float = 1,
        title = "^$|^\\s$|^win\\d+$",
    },
    no_initial_focus = true,
})

-- No shadow for tiled windows (matches windows that are not floating).
hl.window_rule({
    match = {
        float = 0,
    },
    no_shadow = true,
})

hl.window_rule({
    match = {
        workspace = "6",
    },
    float = false,
})
hl.window_rule({
    match = {
        workspace = "7",
    },
    float = false,
})
hl.window_rule({
    match = {
        workspace = "8",
    },
    float = false,
})
hl.window_rule({
    match = {
        workspace = "9",
    },
    float = false,
})
hl.window_rule({
    match = {
        workspace = "10",
    },
    float = false,
})

-- ######## Workspace rules ########
hl.workspace_rule({
    workspace = "special:special",
    gaps_out = 30,
})

-- ######## Layer rules ########
hl.layer_rule({
    match = {
        namespace = ".*",
    },
    xray = true,
})

-- layerrule = match:namespace .*, no_anim on
hl.layer_rule({
    match = {
        namespace = "selection",
    },
    no_anim = true,
})
hl.layer_rule({
    match = {
        namespace = "overview",
    },
    no_anim = true,
})
hl.layer_rule({
    match = {
        namespace = "hyprpicker",
    },
    no_anim = true,
})
hl.layer_rule({
    match = {
        namespace = "noanim",
    },
    no_anim = true,
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
    blur = true,
    ignore_alpha = 0.69,
})

-- noctalia
hl.layer_rule({
    match = {
        namespace = "session[0-9]*",
    },
    blur = true,
})
hl.layer_rule({
    match = {
        namespace = "bar[0-9]*",
    },
    blur = true,
    ignore_alpha = 0.6,
})
hl.layer_rule({
    match = {
        namespace = "barcorner.*",
    },
    blur = true,
    ignore_alpha = 0.6,
})
hl.layer_rule({
    match = {
        namespace = "dock[0-9]*",
    },
    blur = true,
    ignore_alpha = 0.6,
})
