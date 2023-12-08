#!/bin/bash
set -e
echo "stage7/01 ... skip RPI boot files, add just demo files "

rm -rf ${STAGE_WORK_DIR}/rootfs/boot/*
rm -rf ${STAGE_WORK_DIR}/rootfs/lib/modules/*

mkdir -p ${STAGE_WORK_DIR}/rootfs/boot/workshop_file

wget -q --show-progress "http://10.48.65.63/share/stefan/fae_files/BOOT.BIN" -P "${STAGE_WORK_DIR}/rootfs/boot"
wget -q --show-progress "http://10.48.65.63/share/stefan/fae_files/devicetree.dtb" -P "${STAGE_WORK_DIR}/rootfs/boot"
wget -q --show-progress "http://10.48.65.63/share/stefan/fae_files/uImage" -P "${STAGE_WORK_DIR}/rootfs/boot/"
wget -q --show-progress "http://10.48.65.63/share/stefan/fae_files/uEnv.txt" -P "${STAGE_WORK_DIR}/rootfs/boot/"

wget -q --show-progress "http://10.48.65.63/share/stefan/fae_files/fae_workshop_visual.vac" -P "${STAGE_WORK_DIR}/rootfs/boot/workshop_file"
wget -q --show-progress "http://10.48.65.63/share/stefan/fae_files/uEnv.txt" -P "${STAGE_WORK_DIR}/rootfs/boot/workshop_file"

cd ${STAGE_WORK_DIR}/rootfs/boot/workshop_file

mkdir -p ${STAGE_WORK_DIR}/rootfs/boot/workshop_file/fae_workshop_pyadi_iio
cd ${STAGE_WORK_DIR}/rootfs/boot/workshop_file/fae_workshop_pyadi_iio
git clone https://github.com/analogdevicesinc/pyadi-iio.git -b "ad7984_demo" "pyadi-iio"
cd ../..
