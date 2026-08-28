-- Parse pywal colors from ~/.cache/wal/colors-hyprland.conf and expose
-- them as a global `wal` table so other modules can use wal.color0 etc.
local function load_wal_colors()
    local colors = {}
    local path = os.getenv("HOME") .. "/.cache/wal/colors-hyprland.conf"
    local f = io.open(path, "r")
    if not f then return colors end
    for line in f:lines() do
        local key, val = line:match("^%$([%w_]+)%s*=%s*(.-)%s*$")
        if key and val then
            colors[key] = val
        end
    end
    f:close()
    return colors
end

wal = load_wal_colors()
