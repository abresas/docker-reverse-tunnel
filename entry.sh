#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/run/dbus/system_bus_socket

systemctl status openvpn@client
systemctl restart openvpn@client

systemctl status openvpn-resin
systemctl restart openvpn-resin
