@echo off
setlocal
cd /d "%~dp0.."
if not exist ".venv\Scripts\python.exe" (
  echo Python environment missing: .venv\Scripts\python.exe
  pause
  exit /b 1
)
".venv\Scripts\python.exe" -m host.app %*
if errorlevel 1 pause
