docker run \
  --name docker-doom \
  -v ./iwad:/home/zandronum/iwad \
  -v ./wad:/home/zandronum/wad \
  -v ./config/:/home/zandronum/config \
  -p 10666:10666 \
  -d docker-doom
