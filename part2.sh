echo "--------------------------Part 2--------------------------"
mount -t efivarfs none /sys/firmware/efi/efivars
grub-install /dev/sda
echo "GRUB installed successfully." 
update-grub
echo "GRUB updated successfully."
echo "Exitting, now you can run ./part3.sh"
echo "---------------------------Done---------------------------"
exit
