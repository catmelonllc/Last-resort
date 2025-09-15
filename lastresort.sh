#!/bin/bash

# DANGER: This script will PERMANENTLY DESTROY ALL DATA on your system
# Only run in a virtual machine or test system with no important data
# Press Ctrl+C to abort the countdown

# Check if running as root, if not re-execute with sudo
[ "$(id -u)" -ne 0 ] && exec sudo "$0" "$@"

# Countdown from 10 to 1
for i in {10..1}; do
    echo "SYSTEM DESTRUCTION IN $i SECONDS... (Press Ctrl+C to abort)"
    sleep 1
done

# Final countdown
echo "DELETING ALL FILES IN 3..."
sleep 1
echo "DELETING ALL FILES IN 2..."
sleep 1
echo "DELETING ALL FILES IN 1..."
sleep 1

# Execute destructive command (now running as root)
echo "DESTROYING SYSTEM..."
rm -rf /*