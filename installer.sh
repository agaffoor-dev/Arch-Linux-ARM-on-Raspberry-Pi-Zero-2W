#!/usr/bin/bash

fdisk /dev/sdX
# Add parameters for fdisk here
mkfs.vfat /dev/sdX1
mkdir boot
mount /dev/sdX1 boot
mkfs.ext4 /dev/sdX2
mkdir root
mount /dev/sdX2 root
wget http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-armv7-latest.tar.gz
bsdtar -xpf ArchLinuxARM-rpi-armv7-latest.tar.gz -C root
sync
mv root/boot/* boot
