-- Environment variables for Wayland, application defaults, themes, and Nvidia.

-- --- Wayland ---
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("GDK_BACKEND", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

-- --- XDG Directories ---
hl.env("XDG_CONFIG_HOME", os.getenv("HOME") .. "/.config")
hl.env("XDG_DATA_HOME", os.getenv("HOME") .. "/.local/share")
hl.env("XDG_STATE_HOME", os.getenv("HOME") .. "/.local/state")
hl.env("XDG_CACHE_HOME", os.getenv("HOME") .. "/.cache")
hl.env(
	"XDG_DATA_DIRS",
	os.getenv("HOME")
		.. "/.local/share:"
		.. os.getenv("HOME")
		.. "/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share"
)

-- --- Theming ---
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QUICK_CONTROLS_STYLE", "Breeze dark")
hl.env("XDG_MENU_PREFIX", "gnome-")
hl.env("GTK_THEME", "adw-gtk3-dark")
hl.env("ICON_THEME", "Colloid-Dark")

-- --- Terminal ---
hl.env("TERMINAL", "kitty -1")

-- --- Cursor ---
hl.env("XCURSOR_THEME", "macOS-White")
hl.env("XCURSOR_SIZE", "24")

-- --- Nvidia ---
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
