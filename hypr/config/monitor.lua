-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                     Monitor Configuration                   ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Monitor wiki https://wiki.hyprland.org/Configuring/Monitors/

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "1",
})

-- If you need to scale things like steam etc, please uncomment these lines.

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

hl.monitor({
    output = "eDP-1",
    mode = "2560x1440@60",
    position = "0x0",
    scale = "1.25",
})

hl.monitor({
    output = "eDP-2",
    mode = "2560x1440@60",
    position = "0x0",
    scale = "1.25",
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "preferred",
    position = "auto",
    scale = "1",
    mirror = "eDP-2",
})

hl.config({
    xwayland = {
        force_zero_scaling = true, -- Unscale XWayland
    },
    -- Adjust GDK_SCALE accordingly to your liking.
    --env = GDK_SCALE, 2                # GDK Scaling Factor (no fractional scaling)
    -- Electron based apps use X11 as default, auto should detect wayland
    -- Cambiar el escalado de la pantalla a 125%
    -- Para conseguir el nombre del monitor: "hyprctl monitors"
    -- Asegurarse que el escalado de monitores externos sea auto y mirror de la pantalla principal
})

