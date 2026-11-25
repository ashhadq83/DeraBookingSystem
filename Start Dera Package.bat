@echo off
cd /d "%~dp0"

:: 1. Check if Python is available
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python not found. Attempting to install via winget...
    winget install -e --id Python.Python.3.11 --scope user --silent --accept-package-agreements --accept-source-agreements
    set "PATH=%PATH%;%LOCALAPPDATA%\Programs\Python\Python311;%LOCALAPPDATA%\Programs\Python\Python311\Scripts"
    
    python --version >nul 2>&1
    if %errorlevel% neq 0 (
        echo Failed to install Python automatically.
        pause
        exit /b
    )
)

:: 2. Start the local server and open the browser
echo Starting local server...
start /b python -m http.server 5500
timeout /t 2 >nul

:: 3. Open the renamed file
start http://127.0.0.1:5500/Package.html