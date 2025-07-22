-- Bab 8: Normalisasi Tingkat Lanjut
-- Hasil dekomposisi tabel hingga mencapai BCNF

CREATE TABLE DOSEN_MK (
    Id_Dosen CHAR(3) PRIMARY KEY,
    Kode_MK CHAR(4)
);

CREATE TABLE MAHASISWA_DOSEN (
    NIM CHAR(4),
    Id_Dosen CHAR(3),
    PRIMARY KEY (NIM, Id_Dosen)
);