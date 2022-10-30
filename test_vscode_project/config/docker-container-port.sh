# perintah mengatur port untuk container bisa berjalan

# Port Forwarding
# supaya aplikasi di dalam container bisa diakses dari local komputer.
# Misalkan saya buat container PHPMyAdmin, maka tampilannya bisa
# saya buka melalui browser di Windows saya.
# Namun Port Forwarding hanya bisa dilakukan saat pertama kali membuat container
# untuk container yang sudah dibuat tanpa publish, maka dia tidak akan bisa
# diakses dari local komputer
docker container create --name namacontainer --publish porthost:portcontainer namaimage:tag
