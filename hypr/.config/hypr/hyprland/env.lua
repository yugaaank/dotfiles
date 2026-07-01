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
hl.env("QT_QPA_PLATFORMTHEME", "gtk3")
hl.env("XDG_MENU_PREFIX", "gnome-")

-- ######## Terminal application #########
hl.env("TERMINAL", "kitty -1")

-- ############ Cursors #############
hl.env("XCURSOR_THEME", "breeze_cursors")
hl.env("XCURSOR_SIZE", "20")
