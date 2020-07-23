#!/bin/bash

# mount and unmounts the shredder and the laptop

if grep -qs '/mnt/storage01 ' /proc/mounts; then
    echo "Unmount storage01"
    fusermount -u /mnt/storage01
else
    echo "Mounting storage01"
    sshfs um2@192.168.0.66:/storage01 /mnt/storage01
    
fi

if grep -qs '/mnt/um2 ' /proc/mounts; then
    echo "Unmount um2"
    fusermount -u /mnt/um2
    
else
    echo "Mounting um2"
    sshfs um2@192.168.0.66:/home/um2 /mnt/um2
fi
exit
