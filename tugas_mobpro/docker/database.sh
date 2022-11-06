# Perintah docker untuk membuat database

docker container create
    --name my_database
    --memory 300m
    --cpus 0.5
    --publish 3306:3306
    --env MARIADB_USER=uzumakiaji
    --env MARIADB_PASSWORD=1234
    --env MARIADB_ROOT_HOST=root
    --env MARIADB_ROOT_PASSWORD=root
    --mount "type=volume,source=mobilepro,destination=/var/lib/mysql"
    --mount "type=bind,source=D:/LATIHAN PEMROGRAMAN/Kotlin_Programming/tugas_mobpro/backup,destination=/var/lib/mysql,readonly"
mariadb:latest

# Sintaks ini berjalan di dalam volume mobpro
# Tetapi DBMS tidak dapat diakses melalui MySQL Workbench
docker container create --name local_database --publish 3307:3306 --env MARIADB_ROOT_HOST=root --env MARIADB_ROOT_PASSWORD=root --mount "type=volume,source=mobilepro,destination=/var/lib/mysql" --mount "type=bind,source=D:/LATIHAN PEMROGRAMAN/Kotlin_Programming/tugas_mobpro/backup,destination=/var/lib,readonly" mariadb:latest

# Sintaks ini berjalan dengan baik
# DBMS bisa diakses melalui MySQL Workbench
docker container create
    --name some_mariadb
    --mount "type=bind,source=D:/LATIHAN PEMROGRAMAN/Kotlin_Programming/tugas_mobpro/backup,destination=/var/lib/mysql"
    --mount "type=volume,source=mobilepro,destination=/var/run/mysqld"
    # --env MARIADB_MYSQL_LOCALHOST_USER=1
    # --env MARIADB_MYSQL_LOCALHOST_GRANTS="RELOAD, PROCESS, LOCK TABLES, BINLOG MONITOR"
    --env MARIADB_ROOT_PASSWORD=root
    --publish 3307:3306
mariadb:latest

# Memulai container database
docker container start some_mariadb

# Menghentikan container database
docker container stop some_mariadb

# Menghapus container database
docker container rm some_mariadb
