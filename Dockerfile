FROM timiil/arm-ubuntu-rootfs-builder
LABEL maintainer "timiil <timiil@163.com>"

ADD install.sh  /mnt/install.sh

RUN cat /mnt/install.sh && \
    chroot /mnt/ sh /install.sh
