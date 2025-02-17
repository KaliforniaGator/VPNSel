#!/bin/bash

# Define the VPNSel-ng directory and file
VPNSel_ng_DIR=/opt/VPNSel-ng
VPNSel_ng_FILE=$VPNSel_ng_DIR/vpnsel-ng

# Check if the VPNSel-ng directory and file exist
if [ -d "$VPNSel_ng_DIR" ] && [ -f "$VPNSel_ng_FILE" ]; then
  # Download the latest version of the vpnsel-ng file from GitHub
  sudo wget -q -O "$VPNSel_ng_FILE" https://raw.githubusercontent.com/KaliforniaGator/VPNSel/main/vpnsel-ng
  sudo chmod +x "$VPNSel_ng_FILE"
  echo "vpnsel-ng file updated to the latest version"
else
  echo "VPNSel-ng directory or file not found. Please run the install script first."
fi
