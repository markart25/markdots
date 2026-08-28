local inFocusOpacity    = 0.9
local notInFocusOpacity = 0.7

hl.window_rule({
    name           = "suppress-maximize",
    match          = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

hl.window_rule({
    name    = "default-opacity",
    match   = { class = ".*" },
    opacity = inFocusOpacity .. " " .. notInFocusOpacity,
})

hl.window_rule({
    name    = "kitty-opaque",
    match   = { class = "^kitty$" },
    opacity = "1 1",
})

hl.window_rule({
    name    = "browser-opacity",
    match   = { class = "^(firefox|brave|chromium|librewolf|qutebrowser|zen-browser)$" },
    opacity = inFocusOpacity .. " " .. notInFocusOpacity,
})

hl.window_rule({
    name    = "spotify-opacity",
    match   = { title = ".*Spotify.*" },
    opacity = inFocusOpacity .. " " .. notInFocusOpacity,
})

hl.window_rule({
    name    = "discord-opacity",
    match   = { title = ".*Discord.*" },
    opacity = inFocusOpacity .. " " .. notInFocusOpacity,
})

hl.window_rule({
    name    = "telegram-opacity",
    match   = { title = ".*Telegram.*" },
    opacity = inFocusOpacity .. " " .. notInFocusOpacity,
})

hl.window_rule({
    name    = "vscode-opacity",
    match   = { title = ".*Code.*" },
    opacity = inFocusOpacity .. " " .. notInFocusOpacity,
})

hl.window_rule({
    name    = "filemanager-opacity",
    match   = { title = ".*(Thunar|nemo).*" },
    opacity = inFocusOpacity .. " " .. notInFocusOpacity,
})

hl.window_rule({
    name       = "lunar-client-fullscreen",
    match      = { class = "^Lunar Client.*$" },
    fullscreen = true,
})
