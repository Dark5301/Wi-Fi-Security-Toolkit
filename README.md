# Wi-Fi Security Toolkit

Welcome to the Wi-Fi Security Toolkit! This repository contains a collection of scripts designed to assist in various Wi-Fi security-related tasks, such as capturing WPA2 handshakes, cracking captured handshakes, sending deauthentication packets, and scanning for nearby Wi-Fi networks. These tools are intended for educational purposes and ethical security testing only. Please ensure you have permission before using these scripts on any network.

## Table of Contents

1. [Introduction](#introduction)
2. [Scripts Overview](#scripts-overview)
   - [capture_handshake.sh](#capture_handshake.sh)
   - [crack_wpa2_handshake.sh](#crack_wpa2_handshake.sh)
   - [deauth_packets.py](#deauth_packets.py)
   - [wifi_scan.sh](#wifi_scan.sh)
3. [Prerequisites](#prerequisites)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Disclaimer](#disclaimer)
7. [License](#license)

## Introduction

This toolkit is designed to help security professionals and enthusiasts understand and analyze Wi-Fi network security. The scripts provided can be used to capture WPA2 handshakes, crack them using a wordlist, send deauthentication packets to disconnect devices from a network, and scan for nearby Wi-Fi networks.

## Scripts Overview

### capture_handshake.sh

This script captures the WPA2 handshake between a client and an access point (AP). It uses `airodump-ng` to monitor the network and capture the handshake, which can later be used for offline cracking.

**Features:**
- Prompts the user for the target AP's MAC address and channel.
- Ensures the wireless interface is in monitor mode.
- Captures the handshake and saves it to a file.

### crack_wpa2_handshake.sh

This script attempts to crack a captured WPA2 handshake using a wordlist. It uses `aircrack-ng` to perform the cracking process.

**Features:**
- Prompts the user for the handshake file, wordlist, and target AP's MAC address.
- Checks if the provided files exist.
- Attempts to crack the handshake using the provided wordlist.

### deauth_packets.py

This Python script sends deauthentication packets to a target device, effectively disconnecting it from the network. It uses the `scapy` library to craft and send the packets.

**Features:**
- Prompts the user for the target device's MAC address, the AP's MAC address, and the monitor mode interface.
- Sends deauthentication packets to the target device.

### wifi_scan.sh

This script scans for nearby Wi-Fi networks and displays information such as SSID, BSSID, channel, and encryption type. It uses `airodump-ng` to perform the scan.

**Features:**
- Puts the wireless interface into monitor mode.
- Scans and lists nearby Wi-Fi networks.

## Prerequisites

Before using these scripts, ensure you have the following installed on your system:

- **Aircrack-ng**: A suite of tools for assessing Wi-Fi network security.
  - Installation: `sudo apt-get install aircrack-ng`
- **Scapy**: A powerful Python library used for network packet manipulation.
  - Installation: `pip install scapy`
- **Wireless Tools**: Utilities for managing wireless interfaces.
  - Installation: `sudo apt-get install wireless-tools`

Additionally, you need a wireless network interface that supports monitor mode.

## Installation

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/your-username/wifi-security-toolkit.git
   ```
2. Navigate to the cloned directory:
   ```bash
   cd wifi-security-toolkit
   ```
3. Ensure the scripts have executable permissions:
   ```bash
   chmod +x capture_handshake.sh crack_wpa2_handshake.sh wifi_scan.sh
   chmod +x deauth_packets.py
   ```

## Usage

### capture_handshake.sh

1. Run the script with sudo privileges:
   ```bash
   sudo ./capture_handshake.sh
   ```
2. Enter the MAC address of the target AP and the channel it is operating on.
3. The script will start capturing the handshake. Once captured, it will be saved to a file named `capture_file-01.cap`.

### crack_wpa2_handshake.sh

1. Run the script:
   ```bash
   sudo ./crack_wpa2_handshake.sh
   ```
2. Provide the path to the handshake capture file, the wordlist file, and the target AP's MAC address.
3. The script will attempt to crack the handshake using the provided wordlist.

### deauth_packets.py

1. Run the script:
   ```bash
   sudo python3 deauth_packets.py
   ```
2. Enter the target device's MAC address, the AP's MAC address, and the monitor mode interface.
3. The script will send deauthentication packets to the target device.

### wifi_scan.sh

1. Run the script with sudo privileges:
   ```bash
   sudo ./wifi_scan.sh
   ```
2. The script will put your wireless interface into monitor mode and start scanning for nearby Wi-Fi networks.

## Disclaimer

This toolkit is intended for educational purposes and ethical security testing only. Unauthorized use of these tools on networks without explicit permission is illegal and unethical. The authors of this repository are not responsible for any misuse or damage caused by these scripts.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Thank you for using the Wi-Fi Security Toolkit! If you have any questions or suggestions, feel free to open an issue or contribute to the project. Happy hacking!
