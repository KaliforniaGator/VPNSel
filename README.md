VPNSel README
===============
![Screen Shot 2025-02-16 at 1 52 55 AM](https://github.com/user-attachments/assets/a8113702-7cad-4141-9ff2-f7477ac1154a)

Introduction
------------

VPNSel is a lightweight and efficient tool designed to simplify the process of selecting and running OpenVPN configuration files. With its clean and intuitive interface, VPNSel makes it easy to manage multiple VPN configurations and connect to your desired network with just a few clicks.

Features
--------

* Fast and efficient configuration file selection
* Clean and easy-to-use interface
* Supports multiple OpenVPN configuration files
* Simple and straightforward connection process

Usage
-----

1. Install VPNSel-ng on your system
2. Add the OpenVPN configuration folders for TCP and UDP to the VPNSel directory
 (VPNSel will look inside the TCP and UDP directories by default)
3. Launch VPNSel and select your desired configuration file (use ./vpnsel-ng to start tool)

   ![Screen Shot 2025-02-16 at 10(1)](https://github.com/user-attachments/assets/f2dd13e6-d75a-4792-b911-e7de07cddeb5)


Installation
------------

Using WGET:
```bash
wget https://raw.githubusercontent.com/KaliforniaGator/VPNSel/main/install.sh
```
Using CURL:
```bash
curl -O https://raw.githubusercontent.com/KaliforniaGator/VPNSel/main/install.sh
```
Using Git:
```bash
git clone https://github.com/KaliforniaGator/VPNSel.git
cd VPNSel
./vpnsel-ng
```

Updating
--------

To update the tool use the Update.sh script which will get the latest version of the tool and install it in your system.

Benefits
--------

* Saves time and effort in managing multiple VPN configurations
* Provides a simple and intuitive way to connect to your desired network
* Supports fast and reliable connections

Requirements
------------
* Linux distro with /bin/bash
* One or more OpenVPN configuration files
* We Install OpenVPN for you if it is not currently installed in your system

Getting Started
---------------

To get started with VPNSel, simply use the install.sh, add your configuration files, and launch the application.

Note
----

VPNSel is designed to work seamlessly with OpenVPN, ensuring a secure and reliable connection. If you have any questions or need further assistance, please don't hesitate to reach out.
