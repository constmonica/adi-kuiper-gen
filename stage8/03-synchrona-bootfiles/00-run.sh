#!/bin/bash -e

rm -f "${ROOTFS_DIR}/boot/kernel7l.img"
rm -f "${ROOTFS_DIR}/boot/config.txt"
rm -f "${ROOTFS_DIR}/boot/overlays/rpi-ad9545-hmc7044.dtbo"

install -v -m 644 files/kernel7l.img "${ROOTFS_DIR}/boot/"
install -v -m 644 files/config.txt "${ROOTFS_DIR}/boot/"
install -v -m 644 files/rpi-ad9545-hmc7044.dtbo "${ROOTFS_DIR}/boot/overlays/"
