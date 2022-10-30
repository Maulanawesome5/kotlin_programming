# Saya memakai database relational bernama MariaDB
# sama seperti di Host atau local computer (dari XAMPP)

# cara pull / download image
docker image pull mariadb:latest

# cara membuat container only
docker container create --name mariadb mariadb:latest

# cara akses ke container yang tidak publish port
docker container exec -it mariadb bash

# cara membuat container dengan konfigurasi lengkap
docker container create
    --name mariadb
    --publish 3306:3306
    --env MARIADB_ROOT_HOST=root
    --env MARIADB_ROOT_PASSWORD=12345
mariadb:latest

# cara menjalankan container
docker container start mariadb

# cara menghentikan container
docker container stop mariadb

# cara menghapus container
docker container rm mariadb
