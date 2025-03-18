#!/bin/bash

#Ensure the user is running with sudo
if [[ $EUID -ne 0 ]]; then
        echo "Please run this script with sudo."
        exit 1
fi 

#Prompt for input
read -p "Enter the MAC address of the target AP: " target_mac 
read -p "Enter the channel of the target AP: " channel

#Validate inputs
if [[ -z "$target_mac" || -z "$channel" ]]; then 
        echo "Error: MAC address and channel cannot be empty"
        exit 1
fi 

#Ensure wlan0mon is in monitor mode
echo "Checking if wlan0mon is in monitor mode..."
iwconfig wlan0mon | grep -i "Monitor" > /dev/null 
if [[ $? -ne 0 ]]; then 
        echo "Error: wlan0mon is not in monitor mode. Enable monitor mode 
first"
        exit 1
fi 

#Run airodump-ng to capture the handshake
echo "Starting handshake capture..."
airodump-ng --bssid "$target_mac" -c "$channel" -w capture_file wlan0mon
