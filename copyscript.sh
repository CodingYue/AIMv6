#!/bin/bash

make clean
make
cp firmware.bin /Volumes/disk3s1
diskutil unmount /dev/disk3s2
sudo dd if=kernel.elf of=/dev/disk3s2 bs=2m count=1
sudo dd if=mbr.bin of=/dev/disk3s1 bs=2m count=1
diskutil unmountDisk /dev/disk3
