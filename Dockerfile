FROM debian:bullseye-slim

RUN  export DEBIAN_FRONTEND=noninteractive \
 &&  apt-get update \
 &&  apt-get install -y libgl1-mesa-dri libgl1-mesa-glx openssh-client ssh-askpass socat virt-manager virt-manager dbus-x11 \
 &&  apt-get clean

ADD docker-entrypoint.sh /usr/local/bin/virt-manager
ENTRYPOINT ["virt-manager"]
