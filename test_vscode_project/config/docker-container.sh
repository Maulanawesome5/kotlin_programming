# Perintah untuk mengelola docker container

# melihat semua container
docker container ls -a

# menampilkan container yang aktif saja
docker container ls

# cara membuat container
# docker container create --name namacontainer namaimage:tag
docker container create --name contohredis redis:latest

# cara menjalankan container
# docker container start namacontainer
docker container start contohredis

# cara menghentikan container
# docker container stop namacontainer
docker container stop contohredis

# cara menjalankan dan menghentikan banyak container
docker container start contohredis contohnginx contohmongo
docker container stop contohredis contohnginx contohmongo

# cara menghapus container, pastikan di stop dulu prosesnya
# docker container rm namacontainer
docker container rm contohredis

# cara melihat log container
# docker container logs namacontainer
docker container logs contohredis
docker container logs -f contohredis
