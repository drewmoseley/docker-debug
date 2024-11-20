FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt dist-upgrade -y
RUN apt install -y picocom netcat-openbsd psmisc strace ltrace lsof build-essential nano speedtest-cli curl wget gdb rpcbind hdparm iputils-ping
RUN usermod -aG dialout,plugdev root
ENTRYPOINT [ "/bin/bash" ]
