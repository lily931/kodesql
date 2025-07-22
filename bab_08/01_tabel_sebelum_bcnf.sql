-- Bab 8: Normalisasi Tingkat Lanjut
-- Contoh tabel yang sudah 3NF tetapi melanggar BCNF
-- Asumsi: Satu dosen hanya mengajar satu mata kuliah
CREATE TABLE JADWAL_DOSEN_3NF (
    NIM CHAR(4),
    Kode_MK CHAR(4),
    Id_Dosen CHAR(3),
    PRIMARY KEY (NIM, Kode_MK)
);