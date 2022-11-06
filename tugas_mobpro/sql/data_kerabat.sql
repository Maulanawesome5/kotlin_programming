-- Make some query to DBMS
SHOW DATABASES;
CREATE DATABASE buku_telepon;
USE buku_telepon;
SHOW tables;

-- Perintah membuat tabel
CREATE TABLE data_kerabat (
    nama_depan VARCHAR(100),
    nama_belakang VARCHAR(100),
    alamat TEXT,
    kecamatan VARCHAR(50),
    kabupaten_kota VARCHAR(50),
    kode_pos INT,
    nomor_telepon VARCHAR(20)
) ENGINE = InnoDB;

SELECT * FROM data_kerabat;
DESCRIBE data_kerabat;

-- Insert new data
INSERT INTO data_kerabat (nama_depan, nama_belakang, alamat, kecamatan, kabupaten_kota, kode_pos, nomor_telepon)
VALUES ("Maulana Aji", "Wicaksono", "Mandala 281 RT.09 RW.03, Desa Semambung", "Gedangan", "Sidoarjo", 61254, "087821615831"),
    ("Normalita Dwi", "Aryani", "Mandala 444 RT.02 RW.05, Desa Semambung", "Gedangan", "Sidoarjo", 61254, "089682245795");

INSERT INTO data_kerabat (nama_depan, nama_belakang, alamat, kecamatan, kabupaten_kota, kode_pos, nomor_telepon)
VALUES ("Ammar", "Wicaksono", "Mandala 445 RT.12 RW.06, Desa Semambung", "Gedangan", "Sidoarjo", 61254, "089827836621"),
    ("Faisal Irfan", "Mahendra", "Jagir Sidomukti Gang 5 Nomor 3", "Wonokromo", "Surabaya", 60244, "081913521351"),
    ("Yudha Aji", "Pratama", "Perum Kendangsari Indah Blok 4C RT.03 RW.06", "Tenggilis Mejoyo", "Surabaya", 60292, "087825413822");
