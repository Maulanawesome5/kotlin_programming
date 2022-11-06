# Restore Volume

# Setelah melakukan backup volume ke dalam file archive
# kita bisa menyimpan file archive backup tersebut ke tempat
# yang lebih aman. Misalkan ke cloud storage (Google Drive, Zippy, dsb.)

# Tahapan melakukan restore
# 1. Buat volume baru untuk lokasi restore data backup
# 2. Buat container baru dengan dua mount, volume baru untuk restore backup,
#    dan bind mount folder dari sistem Host yang berisi file backup.
# 3. Lakukan restore menggunakan container dengan cara extract isi backup
#    file ke dalam volume.
# 4. Isi file backup sekarang sudah di restore ke volume.
# 5. Delete container yang digunakan untuk melakukan restore.
# 6. Volume baru yang berisi data backup siap digunakan oleh container baru.

docker volume create mongo_restore

docker container run
    --rm
    --name ubuntu_restore
    --mount "type=bind,source=D:/LATIHAN PEMROGRAMAN/Kotlin_Programming/test_vscode_project/backup,destination=/backup"
    --mount "type=volume,source=mongo_restore,destination=/data"
ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

docker container create
    --name mongo_restore
    --publish 27020:27017
    --mount "type=volume,source=mongo_restore,destination=/data/db"
    --env MONGO_INITDB_ROOT_USERNAME=eko
    --env MONGO_INITDB_ROOT_PASSWORD=12345
mongo:latest
