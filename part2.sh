grub-install /dev/sda
echo "GRUB installed successfully." 
update-grub
echo "GRUB updated successfully."
echo "Exitiing..."
exit
sudo umount /mnt/dev/pts
sudo umount /mnt/dev
sudo umount /mnt/proc
sudo umount /mnt/sys
sudo umount /mnt || echo "Failed to unmount /mnt"
echo "unmouting complete"
echo "Done, everthing is OK."
