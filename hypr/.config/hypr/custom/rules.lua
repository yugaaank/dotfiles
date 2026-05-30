-- You can put custom rules here

-- Window/layer rules: https://wiki.hyprland.org/Configuring/Window-Rules/

-- Workspace rules: https://wiki.hyprland.org/Configuring/Workspace-Rules/

-- ######## Window rules ########

-- Make every new window start floating by default. Specific rules below can still override.

-- Uncomment to apply global transparency to all windows:

-- windowrule = opacity 0.89 override 0.89 override, match:class .*

-- Disable blur for all xwayland apps

-- windowrule = no_blur on, match:xwayland 1
hl.window_rule({
    match = {
        class = "^(zen-browser)$",
    },
    float = true,
})
hl.window_rule({
    match = {
        class = "^(zen-browser)$",
    },
    center = true,
})
hl.window_rule({
    match = {
        class = "^(zen-browser)$",
    },
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
        class = "^(.*)$",
    },
    border_size = 0,
})
hl.window_rule({
    match = {
        title = "^(archmenu)$",
    },
    float = true,
})
hl.window_rule({
    match = {
        title = "^(archmenu)$",
    },
    center = true,
})
hl.window_rule({
    match = {
        title = "^(archmenu)$",
    },
    size = "500 200",
})
hl.window_rule({
    match = {
        title = "^(archmenu-about)$",
    },
    float = true,
})
hl.window_rule({
    match = {
        title = "^(archmenu-about)$",
    },
    center = true,
})
hl.window_rule({
    match = {
        title = "^(archmenu-about)$",
    },
    size = "800 500",
})
hl.window_rule({
    match = {
        title = "^(archmenu-install)$",
    },
    float = true,
})
hl.window_rule({
    match = {
        title = "^(archmenu-install)$",
    },
    center = true,
})
hl.window_rule({
    match = {
        title = "^(archmenu-install)$",
    },
    size = "900 600",
})
