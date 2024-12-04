# for adrien's setup only
mount_data_drive:
	-sudo umount /mnt/HDD8TO
	@echo "Mounting data drive..."
	@sudo mount -o remount, rw /dev/sdb1 /mnt/HDD8TO
	@sudo chmod 777 /mnt/HDD8TO


install_env:
	-pyenv virtualenv-delete -f bioxai
	-pyenv install -f 3.12.4
	@pyenv virtualenv 3.12.4 bioxai
	@pyenv local bioxai
	@pip install -r requirements.txt
	@git clone https://github.com/mahmoodlab/HEST.git; cd HEST
	@pip install .
	@cd .. && rm -rf HEST
	@mkdir -p ${DATASET_DIR}/hest
