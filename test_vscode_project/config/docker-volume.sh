# Docker Volume

# Fitur bind mount sudah ada sejak Docker versi awal. Pada versi
# baru direkomendasikan menggunakan Docker Volume untuk pengganti Mount.
# Docker Volume mirip dengan Bind Mounts, bedanya adalah terdapat manajemen volume
# dimana kita bisa membuat volume, melihat daftar volume, dan menghapus volume
# Volume sendiri bisa dianggap storage yang digunakan untuk menyimpan data

# Perbedaan bind mount dengan volume
# bind mount -> menyimpan data pada sistem host
# volume -> data di manage oleh Docker

# Melihat docker volume
# Saat membuat container, dimanakah data di dalam container itu disimpan ?
# Secara default semua data di container disimpan di volume.
# Jika kita coba melihat docker volume, kita akan lihat bahwa ada banyak
# volume yang sudah terbuat, walaupun kita belum pernah membuatnya sama sekali.
docker volume ls

docker volume create namavolume

docker volume rm namavolume
