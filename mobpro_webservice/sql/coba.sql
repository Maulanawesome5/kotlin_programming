SHOW DATABASES;
DROP DATABASE buku_telepon; -- untuk menghapus database
USE buku_telepon; USE saham_indonesia;
SHOW TABLES;

-- create some database
CREATE DATABASE saham_indonesia;

-- preview and selection table
SELECT * FROM data_kerabat; DESCRIBE data_kerabat; SHOW CREATE TABLE data_kerabat;

-- manajemen data tabel
SELECT * FROM data_kerabat WHERE kabupaten_kota = "Sidoarjo";
SELECT * FROM data_kerabat WHERE kabupaten_kota = "Surabaya";
