#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/run/dbus/system_bus_socket

sshpass -e ssh -N -R 19999:localhost:22 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $MAINTAINANCE_SSH_USER@$MAINTAINANCE_SSH_HOST
