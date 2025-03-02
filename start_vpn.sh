#!/bin/bash

# Variables
CONFIG_FILE="/etc/wireguard/wg0.conf"
INTERFACE="wg0"

# Check if WireGuard is installed
if ! command -v wg-quick &> /dev/null; then
    echo "WireGuard is not installed. Installing..."
    sudo apt update
    sudo apt install -y wireguard
fi

# Create WireGuard config if it doesn't exist
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Creating WireGuard configuration file..."
    sudo bash -c "cat > $CONFIG_FILE <<EOF
[Interface]
Address = 100.89.128.4/30
ListenPort = 51820
PrivateKey = +HptQJTy7Cz+yA9xhpXMDZHwvNa6E1WN4EMpordrjm0=

[Peer]
PublicKey = isgOK372COQVvfPKLem5JDY9kgCqwktEOeCvNf6KdjY=
AllowedIPs = 100.89.128.1/32
Endpoint = pangolin.ridewithit.site:51820
PersistentKeepalive = 5
EOF"
    sudo chmod 600 "$CONFIG_FILE"
fi

# Start WireGuard interface
echo "Starting WireGuard interface..."
sudo wg-quick up $INTERFACE
echo "VPN is now connected."
