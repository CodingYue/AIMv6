#!/bin/bash

make clean
make
diskutil unmount /dev/disk3s2
diskutil unmount /dev/disk3s1
sudo dd if=kernel.elf of=/dev/disk3s2 bs=2m count=1
sudo dd if=mbr.bin of=/dev/disk3 bs=2m count=1
diskutil unmountDisk /dev/disk3