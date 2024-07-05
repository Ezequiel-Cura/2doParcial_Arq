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

