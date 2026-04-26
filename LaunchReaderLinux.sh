#!/bin/bash
# Move to the directory where the script is located
cd "$(dirname "$0")"

PORT=8080

echo "---------------------------------------"
echo "Starting Counterside Story Reader..."
echo "---------------------------------------"

if command -v python3 >/dev/null 2>&1; then
    echo "Found Python 3. Launching server..."
    (sleep 2 && xdg-open "http://localhost:$PORT") &
    python3 -m http.server $PORT --directory dist
elif command -v node >/dev/null 2>&1; then
    echo "Found Node.js. Launching via npx..."
    npx serve -s dist -l $PORT &
    sleep 2 && xdg-open "http://localhost:$PORT"
else
    echo "Error: Neither Python 3 nor Node.js was found."
    echo "Please install one of them to run this reader."
    read -p "Press enter to exit..."
fi