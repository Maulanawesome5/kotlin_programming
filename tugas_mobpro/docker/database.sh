# Perintah docker untuk membuat database

docker container create
    --name my_database
    --memory 300m
    --cpus 0.5
    --publish 3306:3306
    --env MARIADB_ROOT_HOST=root
    --env MARIADB_ROOT_PASSWORD=root
    --mount "type=volume,source=mobilepro,destination=/data/db,readonly"
mariadb:latest

# Memulai container database
docker container start my_database

# Menghentikan container database
docker container stop my_database

# Menghapus container database
docker container rm my_database
