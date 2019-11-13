FROM timiil/arm-ubuntu-rootfs-builder
LABEL maintainer "timiil <timiil@163.com>"

ADD install.sh  /mnt/install.sh

RUN chmod +x /mnt/install.sh && \
    cat /mnt/install.sh && \
    chroot /mnt/ /bin/bash date && \
    chroot /mnt/ /bin/bash /install.sh
