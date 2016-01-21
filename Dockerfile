FROM resin/rpi-raspbian:jessie

RUN apt-get -y update && apt-get install ssh-client sshpass

RUN mkdir -p /run/systemd/system # systemctl fails without this

COPY ./entry.sh /entry.sh
CMD /entry.sh
