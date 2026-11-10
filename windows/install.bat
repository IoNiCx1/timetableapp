@echo off
taskkill /im ttalarm.exe /f >nul 2>&1
taskkill /im alarmd.exe /f >nul 2>&1
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v TimetableAlarm /t REG_SZ /d "\"%~dp0ttalarm.exe\" --open" /f
start "" "%~dp0ttalarm.exe" --open
echo.
echo Installed. Timetable page: http://127.0.0.1:8765/
echo Keep this folder where it is: Windows starts ttalarm.exe from here at every login.
pause
