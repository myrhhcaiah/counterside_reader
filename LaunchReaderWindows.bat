@echo off
set PORT=9128

echo ---------------------------------------
echo Starting Counterside Story Reader...
echo ---------------------------------------

:: Start the server in the background
:: --index index.html tells it to serve your app
:: --spa allows React routing to work if you add it later
:: dist is the folder we are serving
start "" "server.exe" --index index.html --spa --port %PORT% dist

:: Give the server a second to initialize
timeout /t 2 /nobreak >nul

:: Open the browser
start http://localhost:%PORT%

echo.
echo Reader is running at http://localhost:%PORT%
echo DO NOT CLOSE THIS WINDOW WHILE USING THE READER.
echo.
pause