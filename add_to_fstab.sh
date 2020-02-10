#!/bin/bash

# Greeter
echo "Be sure to have ntfs-3g installed!"
echo "Welcome to the ntfs mount point fstab adder script!"

# Drive information
read -p "What is the drive you want to mount? " drive
read -p "What is the mount point of the drive you want to add to fstab? " mount


# Adding to fstab
echo "Adding default config to fstab (defaults with user and exec privilages)"
sudo echo -e "# $drive to $mount\n$drive\t$mount\tntfs-3g\tdefaults,nls=utf8,umask=000,dmask=077,fmask=077,uid=1000,gid=1000,exec,windows_names\t0\t0" >> /etc/fstab
