-- Bab 5: SQL - DDL
-- Membuat tabel JURUSAN dan MAHASISWA

-- Membuat tabel JURUSAN
CREATE TABLE JURUSAN (
    Kode_Jurusan CHAR(2) NOT NULL,
    Nama_Jurusan VARCHAR(50) NOT NULL,
    PRIMARY KEY (Kode_Jurusan)
);

-- Membuat tabel MAHASISWA
CREATE TABLE MAHASISWA (
    NIM CHAR(4) NOT NULL,
    Nama_Lengkap VARCHAR(100) NOT NULL,
    Tanggal_Lahir DATE,
    Kode_Jurusan CHAR(2),
    PRIMARY KEY (NIM),
    FOREIGN KEY (Kode_Jurusan) REFERENCES JURUSAN(Kode_Jurusan)
);