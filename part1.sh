#!/bin/bash

echo "Created by Davood:)"
echo "--------------------------Part 1--------------------------"

# recognize partitions
echo "Suppose your linux root partition is on /dev/sda*. What number is *?"
read root_par
echo "Suppose your linux boot partition is on /dev/sda+. What number is +?"
read boot_par
echo "Suppose your EFI partition is on /dev/sda-. What number is -? (Usually it's 1.)"
read efi_par
echo "Partitions recognized sucessfully."

# mount partitions
sudo mount /dev/sda$root_par /mnt
sudo mount /dev/sda$boot_par /mnt/boot
sudo mount /dev/sda$efi_par /mnt/boot/efi
echo "Partitions mounted successfully."

# bind some files
sudo mount --bind /dev /mnt/dev
sudo mount --bind /dev/pts /mnt/dev/pts
sudo mount --bind /proc /mnt/proc
sudo mount --bind /sys /mnt/sys
sudo mount --bind /run /mnt/run
echo "Files were bound sucessfully."

# copy files for next steps
sudo cp part2.sh /mnt
sudo cp part3.sh /mnt
echo "Copying the rest of the files was done successfully."

# give next step's files execute permission
sudo chmod +x part2.sh 
sudo chmod +x part3.sh 
echo "Execute permissions given sucessfully."

echo "Now please run this command: 'sudo ./part2.sh'"
echo "---------------------------Done---------------------------"
sudo chroot /mnt
