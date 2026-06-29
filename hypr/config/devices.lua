-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Devices Configuration                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Invertir el scroll del touchpad :=)
-- Para ver que id/nombre tiene el touchpad (o cualquier dispositivo): "hyprctl devices"
hl.device({
    name = "asue120a:00-04f3:319b-touchpad",
    natural_scroll = true,
})

