export PASSWORD_DOCKER_HUB='#$@YozLaz08'
docker build -t item-app:v1 .
docker images
docker tag item-app:v1 yozzy/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u yozzy --password-stdin
docker push yozzy/item-app:v1
docker run -d -p 80:8080 --name item-app yozzy/item-app:v1 > log.txt