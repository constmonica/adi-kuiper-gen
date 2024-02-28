#!/bin/bash -e

on_chroot << EOF
curl -sL https://install.raspap.com | bash -s -- --repo "analogdevicesinc/raspap-webgui" --branch synchrona_revB --yes
EOF