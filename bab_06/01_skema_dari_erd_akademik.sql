-- Bab 6: Model Entity-Relationship
-- Contoh translasi dari Diagram ER Sistem Akademik menjadi skema SQL

CREATE TABLE JURUSAN (
    Kode_Jurusan CHAR(2) PRIMARY KEY,
    Nama_Jurusan VARCHAR(50) NOT NULL
);

CREATE TABLE DOSEN (
    Id_Dosen CHAR(3) PRIMARY KEY,
    Nama_Dosen VARCHAR(100) NOT NULL,
    Kode_Jurusan_Kepala CHAR(2) UNIQUE,
    FOREIGN KEY (Kode_Jurusan_Kepala) REFERENCES JURUSAN(Kode_Jurusan)
);

CREATE TABLE MAHASISWA (
    NIM CHAR(4) PRIMARY KEY,
    Nama_Lengkap VARCHAR(100) NOT NULL,
    Kode_Jurusan CHAR(2),
    FOREIGN KEY (Kode_Jurusan) REFERENCES JURUSAN(Kode_Jurusan)
);

CREATE TABLE MATA_KULIAH (
    Kode_MK CHAR(4) PRIMARY KEY,
    Nama_MK VARCHAR(100) NOT NULL,
    SKS INT
);

CREATE TABLE MENGAJAR (
    Id_Dosen CHAR(3),
    Kode_MK CHAR(4),
    PRIMARY KEY (Id_Dosen, Kode_MK),
    FOREIGN KEY (Id_Dosen) REFERENCES DOSEN(Id_Dosen),
    FOREIGN KEY (Kode_MK) REFERENCES MATA_KULIAH(Kode_MK)
);

CREATE TABLE MENGAMBIL (
    NIM CHAR(4),
    Kode_MK CHAR(4),
    Nilai VARCHAR(2),
    PRIMARY KEY (NIM, Kode_MK),
    FOREIGN KEY (NIM) REFERENCES MAHASISWA(NIM),
    FOREIGN KEY (Kode_MK) REFERENCES MATA_KULIAH(Kode_MK)
);