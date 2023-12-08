#!/bin/bash
set -e
echo "stage7/01 ... skip RPI boot files, add just demo files "

on_chroot << EOF

rm -rf ${STAGE_WORK_DIR}/rootfs/boot/*
rm -rf ${STAGE_WORK_DIR}/rootfs/lib/modules/*

cp -f files/BOOT.BIN ${STAGE_WORK_DIR}/rootfs/boot/
cp -f files/devicetree.dtb ${STAGE_WORK_DIR}/rootfs/boot/
cp -f files/uImage ${STAGE_WORK_DIR}/rootfs/boot/
cp -f files/uEnv.txt ${STAGE_WORK_DIR}/rootfs/boot/

mkdir -p ${STAGE_WORK_DIR}/rootfs/boot/workshop_file
cp -f files/fae_workshop_visual.vac ${STAGE_WORK_DIR}/rootfs/boot/workshop_files/
cp -f files/tmr_conf_script.sh ${STAGE_WORK_DIR}/rootfs/boot/workshop_files/

mkdir -p ${STAGE_WORK_DIR}/rootfs/boot/workshop_file/fae_workshop_pyadi_iio
cd ${STAGE_WORK_DIR}/rootfs/boot/workshop_file/fae_workshop_pyadi_iio
git clone https://github.com/analogdevicesinc/pyadi-iio.git -b "ad7984_demo" "pyadi-iio"
cd -

EOF
