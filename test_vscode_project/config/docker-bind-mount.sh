# Bind Mounts

# Bind Mount merupakan kemampuan melakukan mounting (sharing)
# file atau folder yang terdapat di sistem host ke container
# yang terdapat di docker.

# Fitur ini sangat berguna ketika misal kita ingin mengirim konfigurasi
# dari luar container, atau misal menyimpan data yang dibuat di aplikasi
# di dalam container ke dalam folder di sistem host.

# Jika file atau folder tidak ada di sistem host, secara otomatis akan dibuatkan oleh docker

# Untuk melakukan mounting, kita bisa menggunakan parameter --mount ketika membuat container

# isi dari parameter --mount memiliki aturan tersendiri

# Parameter mounts
# type -> Tipe mount, bind atau volume
# source -> lokasi file atau folder di sistem Host
# destination -> Lokasi file atau folder di container
# readonly -> Jika ada, maka file atau folder hanya bisa dibaca di container, tidak bisa ditulis

# perintah melakukan mount
docker container create
    --name namacontainer
    --mount "type=bind,source=folder,destination=folder,readonly"
image:tag

# contoh pemakaian
docker container create
    --name mongo_database
    --mount "type=bind,source=C:/Users/maula/mongo-data,destination=/data/db,readonly"
    --publish 27018:27017
    --env MONGO_INITDB_ROOT_USERNAME=eko
    --env MONGO_INITDB_ROOT_PASSWORD=12345
mongo:latest

# perintah mount ini akan membuat backup di local komputer.
# seandainya jika container dihapus, ketik perintah di atas, maka
# isi data akan di restore menjadi container kembali
