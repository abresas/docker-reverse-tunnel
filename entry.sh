#!/bin/bash

[ -z "$MAINTENANCE_SSH_USER" ] && echo "Need to set MAINTENANCE_SSH_USER" && exit 1
[ -z "$MAINTENANCE_SSH_HOST" ] && echo "Need to set MAINTENANCE_SSH_HOST" && exit 1
[ -z "$SSHPASS" ] && echo "Need to set SSHPASS" && exit 1

MAINTENANCE_SSH_PORT=${MAINTENANCE_SSH_PORT:-19999}

sshpass -e ssh -N -R "$MAINTENANCE_SSH_PORT:localhost:22222" -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "$MAINTENANCE_SSH_USER@$MAINTENANCE_SSH_HOST"
