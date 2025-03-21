#!/bin/bash

# Check if OpenVPN is installed
if ! command -v openvpn &> /dev/null; then
  echo "OpenVPN is not installed. Installing..."
  sudo apt-get update
  sudo apt-get install -y openvpn
  echo "OpenVPN installed successfully"
fi

# Create VPNSel-ng directory
VPNSel_ng_DIR=/opt/VPNSel-ng

if [ ! -d "$VPNSel_ng_DIR" ]; then
  sudo mkdir -p "$VPNSel_ng_DIR"
  echo "VPNSel-ng directory created at $VPNSel_ng_DIR"
fi

# Download vpnsel-ng file from GitHub
VPNSel_ng_FILE=$VPNSel_ng_DIR/vpnsel-ng

if [ ! -f "$VPNSel_ng_FILE" ]; then
  sudo wget -q -O "$VPNSel_ng_FILE" https://raw.githubusercontent.com/KaliforniaGator/VPNSel/main/vpnsel-ng
  sudo chmod +x "$VPNSel_ng_FILE"
  echo "vpnsel-ng file downloaded and made executable"
else
  echo "vpnsel-ng file already exists at $VPNSel_ng_FILE"
fi

# Download update.sh script from GitHub
UPDATE_SH_FILE=$VPNSel_ng_DIR/update.sh

if [ ! -f "$UPDATE_SH_FILE" ]; then
  sudo wget -q -O "$UPDATE_SH_FILE" https://raw.githubusercontent.com/KaliforniaGator/VPNSel/main/update.sh
  sudo chmod +x "$UPDATE_SH_FILE"
  echo "update.sh script downloaded and made executable"
else
  echo "update.sh script already exists at $UPDATE_SH_FILE"
fi

# Create TCP and UDP folders
TCP_FOLDER=$VPNSel_ng_DIR/TCP
UDP_FOLDER=$VPNSel_ng_DIR/UDP

if [ ! -d "$TCP_FOLDER" ]; then
  sudo mkdir -p "$TCP_FOLDER"
  echo "TCP folder created at $TCP_FOLDER"
fi

if [ ! -d "$UDP_FOLDER" ]; then
  sudo mkdir -p "$UDP_FOLDER"
  echo "UDP folder created at $UDP_FOLDER"
fi

# Create pass.txt file
PASS_FILE=$VPNSel_ng_DIR/pass.txt

if [ ! -f "$PASS_FILE" ]; then
  sudo touch "$PASS_FILE"
  echo "pass.txt file created at $PASS_FILE"
else
  echo "pass.txt file already exists at $PASS_FILE"
fi

echo "Installation complete!"
echo "Next steps:"
echo "1. Place your OpenVPN configuration files (.ovpn) in the TCP folder at $TCP_FOLDER or the UDP folder at $UDP_FOLDER"
echo "2. Edit the pass.txt file at $PASS_FILE with your username on the first line and password on the second line"
echo "3. Run the vpnsel-ng command from the VPNSel-ng directory to select and connect to your OpenVPN configurations"
echo "4. Run the update.sh script from the VPNSel-ng directory to update VPNSel-ng in the future."
