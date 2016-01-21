#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/run/dbus/system_bus_socket

dmesg | tail -n 50
sleep 10
free -m
sleep 10
journalctl -eu openvpn@client | tail -n 50
sleep 10
systemctl status openvpn@client
sleep 2
systemctl enable openvpn@client
sleep 2
systemctl restart openvpn@client
sleep 2
journalctl -u openvpn@client
