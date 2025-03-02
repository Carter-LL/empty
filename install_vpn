#!/bin/bash

# Define URLs
START_VPN_URL="https://raw.githubusercontent.com/Carter-LL/empty/refs/heads/main/start_vpn.sh"
STOP_VPN_URL="https://raw.githubusercontent.com/Carter-LL/empty/refs/heads/main/stop_vpn.sh"

# Define destination
INSTALL_DIR="$HOME/vpn_scripts"

# Create directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Download the scripts
echo "Downloading VPN scripts..."
wget -O "$INSTALL_DIR/start_vpn.sh" "$START_VPN_URL"
wget -O "$INSTALL_DIR/stop_vpn.sh" "$STOP_VPN_URL"

# Make the scripts executable
chmod +x "$INSTALL_DIR/start_vpn.sh" "$INSTALL_DIR/stop_vpn.sh"

echo "VPN scripts installed successfully in $INSTALL_DIR."
echo "You can start the VPN using: $INSTALL_DIR/start_vpn.sh"
echo "You can stop the VPN using: $INSTALL_DIR/stop_vpn.sh"
