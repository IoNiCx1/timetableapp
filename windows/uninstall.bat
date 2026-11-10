@echo off
taskkill /im ttalarm.exe /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v TimetableAlarm /f
echo Removed from startup and stopped.
pause
