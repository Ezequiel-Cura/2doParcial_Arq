
LISTA=$2
USUARIO2=$1
ANT_IFS=$IFS

IFS=$'\n'

for i in `cat $LISTA | awk -F ',' '{print$1" "$2}' | grep -v ^#`
do
        USUARIO=$(echo $i | awk '{print$1}')
        GRUPO=$(echo $i | awk '{print$2}')
	#echo $USUARIO
	#echo $GRUPO
        sudo groupadd $GRUPO
        sudo useradd -m -s /bin/bash -G $GRUPO -p "$(sudo grep $USUARIO2 /etc/shadow | awk -F ':' '{print$2}')" $USUARIO
done
IFS=$ANT_IFS
