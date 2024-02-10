echo "Created by Davood:)"
echo "--------------------------Part 1--------------------------"
sudo mount /dev/sda9 /mnt
sudo mount /dev/sda8 /mnt/boot
sudo mount --bind /dev /mnt/dev
sudo mount --bind /dev/pts /mnt/dev/pts
sudo mount --bind /proc /mnt/proc
sudo mount --bind /sys /mnt/sys
sudo mount --bind /run /mnt/run
sudo mount /dev/sda10 /mnt/home
sudo mount /dev/sda1 /mnt/boot/efi
echo "Partitions mounted successfully."
echo "---------------------------Done---------------------------"
sudo chroot /mnt
