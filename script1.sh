#!/bin/bash
# Script 1: System Identity Report
# Author: Muskan Malik | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Muskan Malik"
SOFTWARE_CHOICE="Git"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

# --- Display Output ---
echo "=========================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "=========================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo ""
echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL"
echo "Current User       : $USER_NAME"
echo "System Uptime      : $UPTIME"
echo "Current Date & Time: $DATE"
echo ""
echo "This system is based on open-source software"
echo "licensed under GNU General Public License (GPL)."
echo "=========================================="
