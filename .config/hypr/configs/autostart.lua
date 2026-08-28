hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})

hl.on("hyprland.start", function()
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("sleep 1 && waybar")
    -- set a random wallpaper at start
    hl.exec_cmd("awww-daemon & sleep 1; " .. os.getenv("HOME") .. "/.config/hypr/scripts/wallpapers/set-random.sh")
end)
