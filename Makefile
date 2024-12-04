# for adrien's setup only
mount_data_drive:
	-sudo umount /mnt/HDD8TO
	@echo "Mounting data drive..."
	@sudo mount -o remount, rw /dev/sdb1 /mnt/HDD8TO
	@sudo chmod 777 /mnt/HDD8TO
