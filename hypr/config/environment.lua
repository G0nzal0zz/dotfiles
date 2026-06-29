-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Enviroment Configuration                 ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

hl.env("HYPRCURSOR_SIZE", "24", true)
hl.env("XCURSOR_SIZE", "24", true)
hl.env("QT_CURSOR_SIZE", "24", true)
-- Telling hyprland to run exclusively on integrated gpu.
hl.env("AQ_DRM_DEVICES", "/dev/dri/amd-igpu")
