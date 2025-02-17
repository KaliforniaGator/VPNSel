#!/bin/bash

# Define the VPNSel-ng directory
VPNSel_ng_DIR=/opt/VPNSel-ng

# Check if the VPNSel-ng directory exists
if [ -d "$VPNSel_ng_DIR" ]; then
  # Remove the VPNSel-ng directory and its contents
  sudo rm -rf "$VPNSel_ng_DIR"
  echo "VPNSel-ng directory removed"
else
  echo "VPNSel-ng directory not found"
fi

echo "Uninstallation complete!"
