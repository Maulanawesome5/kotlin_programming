# Saat kita membuat container, aplikasi yang terdapat dalam
# container hanya bisa diakses dari dalam container.
# Oleh karena itu, kadang kita perlu masuk ke dalam container tersebut.
# Untuk masuk ke dalam container, kita bisa menggunakan perintah
# Container Exec yang digunakan untuk mengeksekusi program aplikasi
# yang terdapat di dalam container.

# Masuk ke container
docker container exec -i -t namacontainer /bin/bash
