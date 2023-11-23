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
# menjalankan kontainer sesuai docker-compose.yml di keluarkan outputnya ke log.txt
docker compose up -d > log.txt