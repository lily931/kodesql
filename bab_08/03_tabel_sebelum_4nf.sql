-- Bab 8: Normalisasi Tingkat Lanjut
-- Contoh tabel yang melanggar 4NF karena ketergantungan multi-nilai
CREATE TABLE KEAHLIAN_KARYAWAN_BCNF (
    Id_Karyawan VARCHAR(5),
    Bahasa_Pemrograman VARCHAR(50),
    Bahasa_Asing VARCHAR(50),
    PRIMARY KEY (Id_Karyawan, Bahasa_Pemrograman, Bahasa_Asing)
);