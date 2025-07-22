-- Bab 14: Keamanan dan Otorisasi
-- Contoh memberikan hak akses

-- Memberikan hak SELECT pada tabel MAHASISWA kepada pengguna 'staf_akademik'
GRANT SELECT ON MAHASISWA TO staf_akademik;

-- Memberikan semua hak akses pada tabel PENJUALAN kepada pengguna 'manager'
GRANT ALL PRIVILEGES ON PENJUALAN TO manager;