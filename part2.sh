echo "--------------------------Part 2--------------------------"
mount -t efivarfs none /sys/firmware/efi/efivars
grub-install /dev/sda
echo "GRUB installed successfully." 
update-grub
echo "GRUB updated /installed successfully."
echo "Please can run this command: 'sudo ./part3.sh'"
echo "---------------------------Done---------------------------"
