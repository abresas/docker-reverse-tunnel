FROM resin/rpi-raspbian:jessie

RUN mkdir -p /run/systemd/system # systemctl fails without this

COPY ./entry.sh /entry.sh
CMD /entry.sh
