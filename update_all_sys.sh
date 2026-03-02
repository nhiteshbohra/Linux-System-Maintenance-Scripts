#!/bin/bash

set -e   # Stop if any command fails

echo "======================================"
echo "   Starting Full Kali Maintenance     "
echo "======================================"

# Update package list
echo "[1/9] Updating package list..."
sudo apt update -y

# Standard upgrade
echo "[2/9] Upgrading installed packages..."
sudo apt upgrade -y

# Dist upgrade (handles kernel & major changes)
echo "[3/9] Performing dist-upgrade..."
sudo apt dist-upgrade -y

# Full upgrade (safer dependency handling)
echo "[4/9] Performing full-upgrade..."
sudo apt full-upgrade -y

# Fix broken dependencies
echo "[5/9] Fixing broken packages..."
sudo apt --fix-broken install -y

# Install default Kali tools (if missing)
echo "[6/9] Ensuring Kali default tools are installed..."
sudo apt install kali-linux-default -y

# Remove unused packages
echo "[7/9] Removing unused packages..."
sudo apt autoremove -y

# Clean unnecessary dependencies
echo "[8/9] Cleaning package cache..."
sudo apt autoclean -y
sudo apt clean

# Reconfigure partially installed packages (safety)
echo "[9/9] Reconfiguring packages..."
sudo dpkg --configure -a

echo "======================================"
echo "   Kali System Fully Updated ✅       "
echo "======================================"