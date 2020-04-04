#!/bin/sh
touch <boot>/ssh
cat ' country=PL
  ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
  update_config=1

  network={
      ssid="NETWORK-NAME"
      psk="NETWORK-PASSWORD"
  }' >> <boot>/wpa_supplicant.conf
