-- Bab 7: Teori Normalisasi
-- Contoh tabel yang belum dinormalisasi (melanggar 2NF dan 3NF)

-- Tabel ini memiliki banyak redundansi dan anomali
CREATE TABLE PROYEK_KARYAWAN_UNNORMALIZED (
    Id_Proyek VARCHAR(5),
    Id_Karyawan VARCHAR(5),
    Nama_Proyek VARCHAR(100),
    Nama_Karyawan VARCHAR(100),
    Gaji_Karyawan INT,
    PRIMARY KEY (Id_Proyek, Id_Karyawan)
);