-- Managed by ryoku-gpu. Pins Hyprland's primary render device to the strongest
-- GPU so the desktop renders on it instead of a weak integrated one. The leftmost
-- device is the primary renderer; the rest stay listed so monitors wired to them
-- keep working through render-offload (reverse PRIME). The env is read once at
-- compositor start, so a change takes effect on the next Hyprland login.
-- ryoku-gpu-primary: 0000:01:00.0
hl.env("AQ_DRM_DEVICES", "/dev/dri/ryoku-gpu-0000-01-00-0:/dev/dri/ryoku-gpu-0000-00-02-0")

-- Reverse PRIME composites the cursor on the primary GPU but scans it out on the
-- GPU the monitor is wired to. Hyprland's hardware cursor plane cannot reliably
-- import that cross-GPU buffer, so the cursor shape can stick on the last image.
-- Software cursors keep it correct.
hl.config({ cursor = { no_hardware_cursors = true } })
