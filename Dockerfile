FROM resin/rpi-raspbian:jessie

RUN apt-get -y update && apt-get -y install ssh-client sshpass && rm -rf /var/lib/apt/*

ENV DBUS_SYSTEM_BUS_ADDRESS=unix:path=/run/dbus/system_bus_socket

RUN mkdir -p /run/systemd/system # systemd utils fail without this

COPY ./entry.sh /entry.sh
CMD /entry.sh
