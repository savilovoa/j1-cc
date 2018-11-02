#!/bin/sh

docker run --name 1c-server --restart=always \
  -d \
  --volume /mnt/1c_data:/var/lib/docker/volumes/1c-server-home/_data \
  --volume /home/usr1cv8:/home/usr1cv8 \
  --volume /var/log/1C:/var/log/1C \
  --volume /etc/localtime:/etc/localtime:ro \
  -p 1540-1541:1540-1541 -p 1560-1591:1560-1591 \
  -h ais-dev.id.local \
  --link=postgresql \
 savilovoa/1c-server
