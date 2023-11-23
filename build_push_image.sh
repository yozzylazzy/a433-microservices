# Inisialisasi env Variable Password Docker
export PASSWORD_DOCKER_HUB="#$@YozLaz08"
# Membangun docker image bernama item-app dengan tag v1 dari dir saat ini
docker build -t item-app:v1 .
# list smw docker images di mesin local
docker images
# membuat tag image dengan docker hub repository
docker tag item-app:v1 yozzy/item-app:v1
# log in docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u yozzy --password-stdin
# push image yang telah dibuat ke docker hub
docker push yozzy/item-app:v1
# menjalankan kontainer dalam detach mode pada port 80 dengan nama item-app dengan image dari docker hub dan outputnya dikeluarkan ke log.txt
docker run -d -p 80:8080 --name item-app yozzy/item-app:v1 > log.txt