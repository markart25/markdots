#!/bin/bash
# Regenerates mako config from template using current pywal colors,
# then reloads mako.

# Note: using -e but NOT -u, because pywal's colors.sh references
# $FZF_DEFAULT_OPTS which may be unset.
set -e

TEMPLATE="${HOME}/.config/mako/mako.template"
OUTPUT="${HOME}/.config/mako/config"
WAL_COLORS="${HOME}/.cache/wal/colors.sh"

if [ ! -f "$TEMPLATE" ]; then
    echo "Mako template not found: $TEMPLATE" >&2
    exit 1
fi

if [ ! -f "$WAL_COLORS" ]; then
    echo "Pywal colors not found at $WAL_COLORS — run 'wal -i <image>' first" >&2
    exit 1
fi

# Load pywal colors ($color0..$color15, $background, $foreground, $cursor)
# shellcheck disable=SC1090
. "$WAL_COLORS"

# Substitute placeholders. Using | as delimiter so the # in hex colors is fine.
sed \
    -e "s|{color0}|${color0}|g" \
    -e "s|{color1}|${color1}|g" \
    -e "s|{color2}|${color2}|g" \
    -e "s|{color3}|${color3}|g" \
    -e "s|{color4}|${color4}|g" \
    -e "s|{color5}|${color5}|g" \
    -e "s|{color6}|${color6}|g" \
    -e "s|{color7}|${color7}|g" \
    -e "s|{color8}|${color8}|g" \
    -e "s|{color9}|${color9}|g" \
    -e "s|{color10}|${color10}|g" \
    -e "s|{color11}|${color11}|g" \
    -e "s|{color12}|${color12}|g" \
    -e "s|{color13}|${color13}|g" \
    -e "s|{color14}|${color14}|g" \
    -e "s|{color15}|${color15}|g" \
    -e "s|{background}|${background}|g" \
    -e "s|{foreground}|${foreground}|g" \
    "$TEMPLATE" > "$OUTPUT"

# Reload mako if it's running
if pgrep -x mako >/dev/null; then
    makoctl reload
    echo "Mako reloaded with new pywal colors"
else
    echo "Mako not running — config written but not reloaded"
fi
