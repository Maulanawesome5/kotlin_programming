# Perintah docker untuk membuat web server

# Cara ini berhasil dibuka melalui browser
# dan file index dapat di edit melalui Visual Studio Code

docker run
    -it
    --rm
    --detach
    --publish 8080:8080
    --name my_server2
    --volume "D:\LATIHAN PEMROGRAMAN\Kotlin_Programming\tugas_mobpro\src:/usr/share/nginx/html"
nginx:latest

# Memulai container web server
docker container start my_server

# Menghentikan container web server
docker container stop my_server

# Menghapus container web server
docker container rm my_server
