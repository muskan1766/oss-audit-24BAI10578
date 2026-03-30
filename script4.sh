#!/bin/bash
# Script 4: Log File Analyzer
# This script counts how many lines in a log file contain a given keyword

# Take input from command line
LOGFILE=$1                      # First argument → log file path
KEYWORD=${2:-error}             # Second argument → keyword (default = "error")

COUNT=0                         # Counter to store number of matches

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found"
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do
    # Check if line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))   # Increment counter
    fi
done < "$LOGFILE"

# Display final result
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
