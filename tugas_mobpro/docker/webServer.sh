# Perintah docker untuk membuat web server

docker container create
    --name my_server
    --memory 142m
    --cpus 0.5
    --publish 8080:8080
    --env MARIADB_ROOT_HOST=root
    --env MARIADB_ROOT_PASSWORD=root
    #--mount "type=volume,source=mobilepro,destination=/data/db,readonly"
    #--mount "type=bind,source=D:/LATIHAN PEMROGRAMAN/Kotlin_Programming/tugas_mobpro/backup,destination=/data/db,readonly"
nginx:latest

# Memulai container web server
docker container start my_server

# Menghentikan container web server
docker container stop my_server

# Menghapus container web server
docker container rm my_server
