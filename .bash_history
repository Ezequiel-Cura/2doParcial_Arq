pwd
sudo apt update
sudo apt install git
git --version
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
ll
pwd
ls ansible
ls ansible/
.ansible
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo systemctl status docker
cat /etc/group
sudo usermod -G docker ezequiel
cat /etc/group
pwd
ll
cd .ssh
cd 
pwd
ll
ansible --version
sudo systemctl status docker
git --version
pwd
exit
pwd
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ll
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh 
source  ~/.bashrc  && history -a
ls UTN-FRA_SO_Examenes/
sudo mkdir RTA_Examen_$(date+%Y%m%d)
sudo mkdir RTA_Examen_$(date +%Y%m%d)
ll
mkdir -r RTA_Examen_
rm -r RTA_Examen_
ll
sudo fdisk -l
exit
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
history
ll
cd RTA_Examen_20240705/
ll
cat Punto_a.sh
cat Punto_A.sh
vim Punto_A.sh
cd ..
pwd
ls UTN-FRA_SO_Examenes/
ls UTN-FRA_SO_Examenes/202406
cat UTN-FRA_SO_Examenes/202406/bash_script/
cat UTN-FRA_SO_Examenes/202406/bash_script
ls UTN-FRA_SO_Examenes/202406/bash_script
ls -l /
ls -l /usr/bin
ls UTN-FRA_SO_Examenes/202406/bash_script
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
ll
ls RTA_Examen_20240705/
vim RTA_Examen_20240705/Punto_B.sh
cd RTA_Examen_20240705/
./Punto_B.sh ezequiel UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo chmod -R 777 Punto_B.sh
./Punto_B.sh ezequiel UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
./Punto_B.sh ezequiel cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ll
./Punto_B.sh ezequiel ./UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
./Punto_B.sh ezequiel ../UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
vim Punto_B.sh
./Punto_B.sh ezequiel ../UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /etc/shadow
sudo cat /etc/shadow
sudo cat /etc/group
cd ..
ll
cd UTN-FRA_SO_Examenes/
ll
cd 202406
ll
ls docker
echo ===============================================================
vim docker/index.html 
cd docker/
ll
vim Dockerfile
docker build -t web1-Cura .
docker build -t web1-cura .
sudo fdisk -l
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc3
sudo pvs
sudo vgs
sudo vgextend vg_datos /dev/sdc3
sudo lvs
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo lvs
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h
docker build -t web1-Cura .
docker build -t web1-cura .
docker run -d -p 8080:80 web1-cura
curl localhost:8080
vim run.sh
docker image list
docker login -u ezequielcura
docker push web1-cura
sudo docker push web1-cura
docker push ezequielcura/web1-cura
docker push ezequielcura/web1-cura:latest
docker push -t ezequielcura/web1-cura:latest
docker push -tag web1-cura ezequielcura/web1-cura:latest
docker push web1-cura ezequielcura/web1-cura:latest
docker push web1-cura
sudo docker login -u ezequielcura
docker push web1-cura
docker tag web1-cura ezequielcura/web1-cura:latest
docker push ezequielcura/web1-cura:latest
history
cd 
pwd
ll
cd RTA_Examen_20240705/
ll
vim Punto_C.sh
cd ..
ll
cd UTN-FRA_SO_Examenes/
LL
ll
cd 202406
ll
cd ansible/
ll
cd roles
ll
cd 2do_parcial/
ll
cd tasks/
ll
vim main.yml 
cd ..
ll
sudo mkdir templates
ll
cd templates/
vim tmpDatosAlumno.yml
vim tmpDatosPc.j2
rm tmpDatosAlumno.yml
rm -r tmpDatosAlumno.yml
ll
pwd
cd ..
ll
cd templates/
ll
vim datos_alumno.txt.j2
ll
cd ..
ll
sudo chmod -R 777 templates/
ll
cd templates
vim datos_alumno.txt.j2
vim datos_equipo.txt.j2
cd ..
cd tasks/
l
vim main.yml 
cd ..
ll
cd ..
ll
ansible-playbook -i inventory/ playbook.yml 
vim roles/2do_parcial/tasks/main.yml
ansible-playbook -i inventory/ playbook.yml 
vim roles/2do_parcial/tasks/main.yml
ansible-playbook -i inventory/ playbook.yml 
cd 
pwd
ll
mkdir repo
ll
cp -r UTN-FRA_SO_Examenes/202406/ repo
ls repo/
cp -r RTA_Examen_20240705/ repo
