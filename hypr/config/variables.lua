-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Variables Configuration                  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

require("config.colors")

-- https://wiki.hyprland.org/Configuring/Variables/#general

hl.gesture({
    fingers = 4,
    direction = "horizontal",
    action = "workspace",
})

hl.gesture({
    fingers = 3,
    direction = "down",
    action = "close",
})

hl.gesture({
    fingers = 3,
    direction = "up",
    action = "fullscreen",
})

hl.gesture({
    fingers = 3,
    direction = "left",
    action = "float",
})
hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 5,
        border_size = 3,
        col = {
            active_border = cachylgreen,
            inactive_border = cachymblue,
        },
        layout = "dwindle", -- master|dwindle
        -- https://wiki.hyprland.org/Configuring/Variables/#snap
        snap = {
            enabled = true,
        },
    },
    -- removed old gestures {} block — Hyprland 0.39+ uses gesture = … lines
    -- https://wiki.hyprland.org/Configuring/Variables/#group
    group = {
        col = {
            border_active = cachydgreen,
            border_inactive = cachylgreen,
            border_locked_active = cachymgreen,
            border_locked_inactive = cachydblue,
        },
        -- https://wiki.hyprland.org/Configuring/Variables/#groupbar
        groupbar = {
            font_family = "\"Fira Sans\"",
            text_color = cachydblue,
            col = {
                active = cachydgreen,
                inactive = cachylgreen,
                locked_active = cachymgreen,
                locked_inactive = cachydblue,
            },
        },
    },
    -- https://wiki.hyprland.org/Configuring/Variables/#misc
    misc = {
        font_family = "\"Fira Sans\"",
        splash_font_family = "\"Fira Sans\"",
        disable_hyprland_logo = true,
        col = {
            splash = cachylgreen,
        },
        background_color = cachydblue,
        enable_swallow = true,
        swallow_regex = "^(nautilus|nemo|thunar|btrfs-assistant.)$",
        focus_on_activate = true,
        vrr = 2,
    },
    -- https://wiki.hyprland.org/Configuring/Variables/#render
    render = {
        direct_scanout = true,
    },
    -- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
    dwindle = {
        special_scale_factor = 0.8,
        preserve_split = true,
    },
    -- See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
    master = {
        new_status = "master",
        special_scale_factor = 0.8,
    },
    -- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    -- ┃                    Gestures                                 ┃
    -- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    -- 4-finger horizontal swipe to switch workspaces
    -- 3-finger swipe down closes active window
    -- 3-finger swipe up toggles fullscreen
    -- 3-finger swipe left toggles float/tile
})

