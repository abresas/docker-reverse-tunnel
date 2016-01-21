#!/bin/bash

[ -z "$MAINTAINANCE_SSH_USER" ] && echo "Need to set MAINTAINANCE_SSH_USER" && exit 1
[ -z "$MAINTAINANCE_SSH_HOST" ] && echo "Need to set MAINTAINANCE_SSH_HOST" && exit 1
[ -z "$SSHPASS" ] && echo "Need to set SSHPASS" && exit 1

MAINTAINANCE_SSH_PORT=${MAINTAINANCE_SSH_PORT:-19999}

sshpass -e ssh -N -R "$MAINTAINANCE_SSH_PORT:localhost:22222" -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "$MAINTAINANCE_SSH_USER@$MAINTAINANCE_SSH_HOST"
