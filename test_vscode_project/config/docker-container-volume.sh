# Container Volume

# Volume yang sudah dibuat, bisa digunakan di container
# Keuntungan memakai volume adalah jika container dihapus, data akan
# tetap aman di dalam volume
# Cara menggunakan volume di container sama dengan menggunakan bind mount,
# kita bisa menggunakan parameter --mount
# namun dengan menggunakan type volume dan source nama volume

docker volume create mongodata

docker container create
    --name mongovolume
    --mount "type=volume,source=mongodata,destination=/data/db,readonly"
    --publish 27019:27017
    --env MONGO_INITDB_ROOT_USERNAME=eko
    --env MONGO_INITDB_ROOT_PASSWORD=12345
mongo:latest

docker container start mongovolume
