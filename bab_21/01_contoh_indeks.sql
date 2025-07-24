-- Bab 21: Indeks dan Peningkatan Kinerja
-- Membuat indeks pada kolom Nama_Lengkap untuk mempercepat pencarian.
-- (Gunakan tabel MAHASISWA dari skrip setup Bab 16 atau Bab 19)
CREATE INDEX idx_mahasiswa_nama ON MAHASISWA (Nama_Lengkap);