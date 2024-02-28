#!/bin/bash -e

cp files/kernel7l.img "${ROOTFS_DIR}/boot/"
cp files/config.txt "${ROOTFS_DIR}/boot/"
cp files/rpi-ad9545-hmc7044.dtbo "${ROOTFS_DIR}/boot/overlays/rpi-ad9545-hmc7044.dtbo"
