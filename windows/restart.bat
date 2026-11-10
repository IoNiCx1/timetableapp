@echo off
taskkill /im ttalarm.exe /f >nul 2>&1
timeout /t 1 /nobreak >nul
start "" "%~dp0ttalarm.exe" --open
