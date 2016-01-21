#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/run/dbus/system_bus_socket

systemctl status openvpn@client
sleep 2
systemctl enable openvpn@client
sleep 2
systemctl restart openvpn@client
sleep 2
journalctl -u openvpn@client
