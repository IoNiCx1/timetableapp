WINDOWS: put the windows folder somewhere permanent (e.g. C:\TimetableAlarm), double-click install.bat once.
         stop.bat / restart.bat / uninstall.bat are there too. Page: http://127.0.0.1:8765/
LINUX:   cd linux && sh install.sh   (re-run to update)
Edits on the page save to the alarm automatically; timetable.txt lives next to ttalarm(.exe).

Line format: days|start|end|title|#color|alert|command
  days = digits 0-6 (0=Mon) or *     alert = s start, e end, b both, n none
