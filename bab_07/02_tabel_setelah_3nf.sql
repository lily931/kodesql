-- Bab 7: Teori Normalisasi
-- Hasil dekomposisi tabel hingga mencapai 3NF

-- Tabel Proyek
CREATE TABLE PROYEK (
    Id_Proyek VARCHAR(5) PRIMARY KEY,
    Nama_Proyek VARCHAR(100)
);

-- Tabel Karyawan
CREATE TABLE KARYAWAN (
    Id_Karyawan VARCHAR(5) PRIMARY KEY,
    Nama_Karyawan VARCHAR(100),
    Gaji_Karyawan INT
);

-- Tabel Penugasan
CREATE TABLE PENUGASAN (
    Id_Proyek VARCHAR(5),
    Id_Karyawan VARCHAR(5),
    PRIMARY KEY (Id_Proyek, Id_Karyawan),
    FOREIGN KEY (Id_Proyek) REFERENCES PROYEK(Id_Proyek),
    FOREIGN KEY (Id_Karyawan) REFERENCES KARYAWAN(Id_Karyawan)
);