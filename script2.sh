#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

echo "======================================"
echo " FOSS Package Inspector "
echo "======================================"

# Check if package is installed
if dpkg -l | grep -w "$PACKAGE" > /dev/null; then
    echo "$PACKAGE is installed."

    dpkg -l | grep -w "$PACKAGE"
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement
case $PACKAGE in
    git)
        echo "Git: distributed version control system for tracking code changes"
        ;;
    apache2)
        echo "Apache: powerful open-source web server"
        ;;
    mysql-server)
        echo "MySQL: open-source relational database system"
        ;;
    vlc)
        echo "VLC: open-source multimedia player"
        ;;
    *)
        echo "No description available"
        ;;
esac

echo "======================================"
