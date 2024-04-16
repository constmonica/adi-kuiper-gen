#!/bin/bash -e
# SPDX-License-Identifier: BSD-3-Clause
#
# kuiper2.0 - Embedded Linux for Analog Devices Products
#
# Copyright (c) 2024 Analog Devices, Inc.
# Author: Larisa Radu <larisa.radu@analog.com>


# This script is run inside 'chroot'. 
# - It works as if Kuiper is running on a system with a few limitations. 
# - Check 'chroot' documentation for more informations.
# This script is run as root, there is no need to use 'sudo' command.
# Current directory is '/' (root) of the Kuiper rootfs.
# If a file needs to be copied, it should be placed inside 'adi-kuiper-gen'.
# If a variable from the configuration file is needed, it should be passed as a parameter at script calling.
# - modify stages/07.extra-scripts/run.sh to pass parameters (see example)
# - assign parameter value to a variable name
# At this stage the Kuiper image is not yet partitioned. In order to modify what will be in the boot partition access /boot folder.
# This script will not be in the resulted image. If this is necessary it should be copied manually.

# Assign script parameter value to a variable (as passed in the example in stages/07.extra-scripts/run.sh)
# TARGET_ARCHITECTURE=$1

# Package installation
# apt install -y <package>

# Package installation without recommended packages (useful when Kuiper image size should be small)
# apt install -y <package> --no-install-recommends

# Copy a file placed in the examples folder to the current directory
# cp stages/07.extra-scripts/examples/<file-to-be-copied> .

# Copy a file placed in the examples folder to the current directory with permission setting
# install -m 644 stages/07.extra-scripts/examples/<file-to-be-copied> .

# Enable a service 
# systemctl enable <service>.service
