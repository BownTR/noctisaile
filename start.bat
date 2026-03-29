@echo off
echo Starting local server for Family Geolocation project...
echo.
echo Checking for Python...
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo Python found. Starting server on http://localhost:8000 ...
    echo Press Ctrl+C to stop the server.
    python -m http.server 8000
    goto end
)

echo Python not found. Checking for Node.js...
node --version >nul 2>&1
if %errorlevel% == 0 (
    echo Node.js found. Starting server using npx http-server on http://localhost:8080 ...
    echo Press Ctrl+C to stop the server.
    npx http-server .
    goto end
)

echo Error: Neither Python nor Node.js were found on this system.
echo Please install Python (python.org) or Node.js (nodejs.org) to run the server.
pause

:end
