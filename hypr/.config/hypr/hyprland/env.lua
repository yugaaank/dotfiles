-- ############ Wayland #############
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("GDK_BACKEND", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

-- ######## Applications #########
hl.env(
	"XDG_DATA_DIRS",
	os.getenv("HOME")
		.. "/.local/share:"
		.. os.getenv("HOME")
		.. "/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share"
)

-- ############ Themes #############
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QUICK_CONTROLS_STYLE", "Breeze dark")
hl.env("XDG_MENU_PREFIX", "gnome-")
hl.env("GTK_THEME", "adw-gtk3-dark")

-- ######## Terminal application #########
hl.env("TERMINAL", "kitty -1")

-- ############ Cursors #############
hl.env("XCURSOR_THEME", "macOS-White")
hl.env("XCURSOR_SIZE", "24")
hl.env("DCONF_PROFILE", "user")

-- ############ NVIDIA #############
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
