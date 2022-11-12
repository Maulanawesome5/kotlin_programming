# Membuat container database
docker container create
    -it
    --detach
    --publish 3307:3306
    --name local_database
    --volume "D:\LATIHAN PEMROGRAMAN\Kotlin_Programming\mobpro_webservice\backup\docker:/var/lib/mysql"
    --env MARIADB_ROOT_PASSWORD=root
mariadb:latest

# Menjalankan container local_database 
# melalui cmd / powershell di Windows
# jika muncul pesan "accsess denied"
mysql --host=localhost --port=3307 --protocol=tcp --user=root --password=root

# Menyalakan container local_database
# Bisa terkoneksi ke ekstensi database di Visual Studio Code
# Namun error (accsess denied) ketika di jalankan di PowerShell / Command Prompt
docker container start local_database

# Menghentikan container
docker container stop local_database
