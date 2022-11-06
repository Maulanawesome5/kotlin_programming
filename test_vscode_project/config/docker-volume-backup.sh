# Backup volume

# Sayangnya sampai saat ini tidak ada cara otomatis melakukan
# backup volume yang sudah dibuat.
# Namun kita bisa memanfaatkan container untuk melakukan backup data
# yang ada di dalam volume ke dalam archive seperti .zip atau .tar.gz

# Tahapan melakukan backup
# Matikan container yang berjalan di volume yang hendak kita bakcup.
# Buat container baru dengan dua mount, volume yang ingin kita backup,
# dan bind mount folder dari sistem host.
# Lakukan backup menggunakan container dengan cara meng-archive isi volume
# simpan di bind mount folder.
# Isi file bakcup sekarang ada di folder sistem Host.
# Delete container yang kita gunakan untuk melakukan bakcup.
docker container create
    --name nginxbackup
    --mount "type=bind,source=D:/LATIHAN PEMROGRAMAN/Kotlin_Programming/test_vscode_project/backup,destination=/backup"
    --mount "type=volume,source=mongodata,destination=/data"
nginx:latest

docker container start nginxbackup

docker container exec -it nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data

# Setelah melakukan backup, silahkan stop container lalu remove
docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongodata

# Menjalankan container secara langsung
# Menjalankan sekaligus membuatkan backup saat membuat volume container
docker container run
    --rm
    --name ubuntu
    --mount "type=bind,source=D:/LATIHAN PEMROGRAMAN/Kotlin_Programming/test_vscode_project/backup,destination=/backup"
    --mount "type=volume,source=mongodata,destination=/data"
ubuntu:latest tar cvf /backup/backup.tar.gz /data
