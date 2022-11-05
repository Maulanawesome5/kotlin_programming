-- Make some query to DBMS
SHOW DATABASES;
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
