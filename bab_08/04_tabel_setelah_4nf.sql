-- Bab 8: Normalisasi Tingkat Lanjut
-- Hasil dekomposisi tabel hingga mencapai 4NF

CREATE TABLE KEAHLIAN_PEMROGRAMAN (
    Id_Karyawan VARCHAR(5),
    Bahasa_Pemrograman VARCHAR(50),
    PRIMARY KEY (Id_Karyawan, Bahasa_Pemrograman)
);

CREATE TABLE KEAHLIAN_BAHASA_ASING (
    Id_Karyawan VARCHAR(5),
    Bahasa_Asing VARCHAR(50),
    PRIMARY KEY (Id_Karyawan, Bahasa_Asing)
);