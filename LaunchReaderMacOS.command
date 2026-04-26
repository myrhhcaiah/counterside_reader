#!/bin/bash
# Move to the directory where the script is located
cd "$(dirname "$0")"

PORT=8080

echo "---------------------------------------"
echo "Starting Counterside Story Reader..."
echo "---------------------------------------"

# Check if Python 3 is installed
if command -v python3 >/dev/null 2>&1; then
    echo "Found Python 3. Launching server..."
    # Open the browser in the background after 2 seconds
    (sleep 2 && open "http://localhost:$PORT") &
    # Start the server
    python3 -m http.server $PORT --directory dist
else
    echo "Error: Python 3 was not found on your system."
    echo "Please install Python or Node.js to run this reader."
    read -p "Press any key to exit..."
fi