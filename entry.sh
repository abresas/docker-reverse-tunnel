#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/run/dbus/system_bus_socket

sshpass -e ssh -R 19999:localhost:22 $MAINTAINANCE_SSH_USER@$MAINTAINANCE_SSH_HOST
