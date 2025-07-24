-- Bab 16: SQL Tingkat Lanjut
-- Skrip untuk membuat dan mengisi tabel contoh yang digunakan di seluruh Bab 16.

-- Hapus tabel jika sudah ada untuk memastikan skrip bisa dijalankan ulang
DROP TABLE IF EXISTS MAHASISWA;
DROP TABLE IF EXISTS JURUSAN;
DROP TABLE IF EXISTS DOSEN_PEMBIMBING;

-- Membuat tabel JURUSAN
CREATE TABLE JURUSAN (
    Kode_Jurusan CHAR(3) PRIMARY KEY,
    Nama_Jurusan VARCHAR(50) NOT NULL
);

-- Membuat tabel MAHASISWA
CREATE TABLE MAHASISWA (
    NIM CHAR(4) PRIMARY KEY,
    Nama_Lengkap VARCHAR(100) NOT NULL,
    Kode_Jurusan CHAR(3),
    FOREIGN KEY (Kode_Jurusan) REFERENCES JURUSAN(Kode_Jurusan)
);

-- Membuat tabel DOSEN_PEMBIMBING
CREATE TABLE DOSEN_PEMBIMBING (
    Id_Dosen CHAR(3) PRIMARY KEY,
    Nama_Dosen VARCHAR(100) NOT NULL,
    Kode_Jurusan_Binaan CHAR(3)
);


-- Mengisi data ke tabel JURUSAN
INSERT INTO JURUSAN (Kode_Jurusan, Nama_Jurusan) VALUES
('TI', 'Teknik Informatika'),
('SI', 'Sistem Informasi'),
('DKV', 'Desain Komunikasi Visual');

-- Mengisi data ke tabel MAHASISWA
INSERT INTO MAHASISWA (NIM, Nama_Lengkap, Kode_Jurusan) VALUES
('1011', 'Budi Santoso', 'TI'),
('1012', 'Citra Lestari', 'SI'),
('1013', 'Doni Wijaya', 'TI'),
('1014', 'Eka Putri', NULL);

-- Mengisi data ke tabel DOSEN_PEMBIMBING
INSERT INTO DOSEN_PEMBIMBING (Id_Dosen, Nama_Dosen, Kode_Jurusan_Binaan) VALUES
('D01', 'Prof. Adiwijaya', 'TI'),
('D02', 'Dr. Indah Sari', 'SI');