#!/bin/sh
# Installs ttalarm (alarm + timetable page) and starts it at every login, opening the page in your browser.
set -e
D="$HOME/.local/share/timetable-alarm"; A="$HOME/.config/autostart"
here=$(cd "$(dirname "$0")" && pwd)
mkdir -p "$D" "$A"
pkill -x ttalarm 2>/dev/null && sleep 1 || true      # stop the old version first
cp "$here/ttalarm" "$D/ttalarm"; chmod +x "$D/ttalarm"
[ -f "$here/timetable.txt" ] && cp "$here/timetable.txt" "$D/"
cat > "$A/timetable-alarm.desktop" <<EOT
[Desktop Entry]
Type=Application
Name=Timetable Alarm
Exec=$D/ttalarm --open
X-GNOME-Autostart-enabled=true
NoDisplay=true
EOT
setsid "$D/ttalarm" --open >/dev/null 2>&1 &
echo "Installed. Timetable page: http://127.0.0.1:8765/"
echo "Edits made on the page save to the alarm automatically."
