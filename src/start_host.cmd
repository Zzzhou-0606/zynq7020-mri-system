@echo off
setlocal
cd /d "%~dp0"
python -B start_host.py %*
if errorlevel 1 pause
