#!/bin/sh
pkill -x ttalarm 2>/dev/null || true
rm -f "$HOME/.config/autostart/timetable-alarm.desktop"
rm -rf "$HOME/.local/share/timetable-alarm"
echo "Removed."
