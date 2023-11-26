#!/bin/sh
W=$(xrandr -q | grep -w Screen | sed 's/.*current //;s/,.*//' | awk '{print $1}')
H=$(xrandr -q | grep -w Screen | sed 's/.*current //;s/,.*//' | awk '{print $3}')
pointX=$(echo $((($W-500)/2)))
pointY=$(echo $((($H-500)/2)))
yad --width=850 --height=500 \
--fixed \
--geometry="+$pointX+$pointY" \
--title="Garuda Hyprland Keybindings" \
--no-buttons \
--list \
--column=Key: \
--column=Description: \
--column=Command: \
--timeout=60 \
--timeout-indicator=right \
"ESC" "close this app" "" "=" "modkey" "(set mod Mod4)" \
"+enter/+t" "Terminal" "(kitty/foot)" \
"Ctrl+space" "Application Menu" "(wofi)" \
"+b" "" "Open Broswer (brave)" \
"+," "" "Open Files" \
"+q" "close focused app" "(kill)" \
"Print-key" "screenshot" "(grim)" \
"+ctrl+alt+p" "poweroff" "(poweroff)" \
"+ctrl+alt+q" "quit" "(quit)" \
"+Shift+w" "Change wallpaper" "(wpaperd)" \
"+f" "Fullscreen" "Toggles to fullscreen" \
"+m" "Fake fullscreen" "Makes open window to behave as fullscreen without changing geoometry" \
"+Shift+Spacebar" "Float" "Toggle windows to float" \
"Change keyboard layout in" "~/.config/hypr/hyprland.conf" " " \
"Window closed in 60 sec."\
