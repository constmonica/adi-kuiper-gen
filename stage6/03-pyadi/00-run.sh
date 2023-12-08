#!/bin/bash -e

on_chroot << EOF

pip3 install git+https://github.com/analogdevicesinc/pyadi-iio.git@ad7984_demo
pip3 install git+https://github.com/analogdevicesinc/pyadi-dt.git

echo "export LD_LIBRARY_PATH=\"${LD_LIBRARY_PATH}:/usr/local/lib\"" >> /home/analog/.bashrc
ldconfig
EOF
