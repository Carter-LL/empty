#!/bin/bash

# Variables
INTERFACE="wg0"

# Stop WireGuard interface
echo "Stopping WireGuard interface..."
sudo wg-quick down $INTERFACE
echo "VPN is now disconnected."
