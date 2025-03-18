#!/bin/bash 

sudo airmon-ng check kill
sudo airmon-ng start wlan0 
sudo airodump-ng wlan0mon 