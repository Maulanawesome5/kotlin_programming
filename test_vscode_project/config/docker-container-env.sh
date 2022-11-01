# Container environment variable

# Saat membuat aplikasi, menggunakan environment variable adalah
# salah satu teknik agar konfigurasi aplikasi bisa diubah secara dinamis.
# Dengan menggunakan Environment Variable, kita bisa mengubah konfigurasi
# aplikasi tanpa harus mengubah kode aplikasinya lagi.
# Docker container memiliki parameter untuk mengirim environment variable
# ke aplikasi yang terdapat dalam container.

# Perintah untuk menambahkan environment variable
# docker container create --name namacontainer --env KEY="value" --env KEY="value" namaimage:tag
docker container create
    --name contohmongo
    --publish 27017:27017
    --env MONGO_INITDB_ROOT_USERNAME=eko
    --env MONGO_INITDB_ROOT_PASSWORD=12345
mongo:latest
# Note : Environment Variable untuk setiap aplikasi berbeda
# Jadi silahkan dibaca pada website Docker Hub
