#!bin/bash

mkdir /home/$USER/Bureau/pwndrop

docker run -d \
  --name=pwndrop \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Paris \
  -e SECRET_PATH=/pwndrop `#optional` \
  -p 8080:8080 \
  -v /home/lolo/Bureau/pwndrop:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/pwndrop:latest
