-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Animations Configuration                 ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- https://wiki.hyprland.org/Configuring/Animations/

-- BASIC ANIMATIONS
-- animations {
--     enabled = yes
--
--     bezier = ease, 0.25, 0.1, 0.25, 1.0
--     bezier = snappy, 0.3, 1.0, 0.4, 1.0
--
--     # Windows
--     animation = windowsIn,  1, 3, snappy, popin 85%
--     animation = windowsOut, 1, 2, ease,   popin 85%
--     animation = windowsMove, 1, 3, snappy
--
--     # Borders
--     animation = border,       1, 6, ease
--     animation = borderangle,  0
--
--     # Workspaces
--     animation = workspacesIn,  1, 4, snappy, slide
--     animation = workspacesOut, 1, 4, ease,   slide
--
--     # Layer surfaces (wofi, waybar popups — short to avoid flicker)
--     animation = layers, 1, 2, ease, fade
--     animation = fadeIn,  1, 2, ease
--     animation = fadeOut, 1, 2, ease
-- }

-- MINIMAL ANIMAITONS
hl.curve("ease", { type = "bezier", points = { { 0.25, 0.1 }, { 0.25, 1.0 } } })
hl.animation({
    leaf = "windowsIn",
    enabled = false,
})
hl.animation({
    leaf = "windowsOut",
    enabled = false,
})
hl.animation({
    leaf = "windowsMove",
    enabled = false,
})
hl.animation({
    leaf = "border",
    enabled = false,
})
hl.animation({
    leaf = "borderangle",
    enabled = false,
})
hl.animation({
    leaf = "workspacesIn",
    enabled = false,
})
hl.animation({
    leaf = "workspacesOut",
    enabled = false,
})
hl.animation({
    leaf = "layers",
    enabled = false,
})
hl.animation({
    leaf = "fadeIn",
    enabled = false,
})
hl.animation({
    leaf = "fadeOut",
    enabled = false,
})
hl.config({
    animations = {
        enabled = true,
        -- Windows
        -- Borders
        -- Workspaces — disabled
        -- Layer surfaces
    },
})

