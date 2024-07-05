
sudo fdisk -l
ll
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd1 /dev/sdc1
sudo pvs
sudo vgcreate vg_datos /dev/sdc1 /dev/sdd1
sudo pvs
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc2
sudo pvs
sudo vgcreate vg_temp /dev/sdc2
sudo pvs
sudo vgs
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo vgs
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo vgs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_temp-lv_swap
free -h
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
free -h
pwd
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo systemctl restart docker
ls -l /
sudo mkdir /work
ls -l /
sudo mount /dev/mapper/vg_datos-lv_workareas /work
df -h

