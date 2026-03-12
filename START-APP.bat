@echo off
cd /d "%~dp0"
echo.
echo ========================================
echo   OSSH - Open Source Sorting Hat
echo ========================================
echo.
echo Starting server... Your browser will open.
echo.
echo KEEP THIS WINDOW OPEN while using the app.
echo Close this window when done.
echo.
timeout /t 2 /nobreak >nul
start http://localhost:8000
python -m http.server 8000
if errorlevel 1 (
    echo.
    echo ERROR: Python not found. Install Python from python.org
    echo Or install Live Server extension in Cursor.
    pause
)
