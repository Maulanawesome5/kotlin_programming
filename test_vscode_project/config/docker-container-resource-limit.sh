# Container resource limit

# Saat membuat container, secara default akan menggunakan semua
# CPU dan Memory yang diberikan ke Docker (Windows dan Mac), dan akan
# menggunakan semua CPU dan Memory yang tersedia di sistem Host Linux.
# Jika terjadi kesalahan, misal container terlalu banyak menghabiskan
# CPU dan Memory, maka bisa berdampak terhadap performa container lain,
# atau bahkan ke sistem Host.
# Oleh karena itu, ada baiknya ketika membuat container, kita memberikan
# resource limit terhadap container-nya.

# atur limit untuk Nginx
docker container create
    --name smallnginx
    --memory 100m
    --cpus 0.5
    --publish 8080:80
nginx:latest
