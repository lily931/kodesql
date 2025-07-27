-- Kunci Jawaban untuk Sesi Latihan Praktik.
-- Jalankan sebagai admin/root.

-- Jawaban Skenario 1: Penerimaan Karyawan Magang
-- 1. Buat user baru
CREATE USER 'budi_intern'@'localhost' IDENTIFIED BY 'MagangSeru2025';

-- 2. Berikan hak akses SELECT dan UPDATE pada tabel stok_barang (asumsi tabel ada)
-- GRANT SELECT, UPDATE ON db_gudang.stok_barang TO 'budi_intern'@'localhost';

-- 3. Berikan hak akses SELECT pada tabel logistik_pengiriman (asumsi tabel ada)
-- GRANT SELECT ON db_gudang.logistik_pengiriman TO 'budi_intern'@'localhost';
SELECT "Jawaban Skenario 1 Selesai." as Status;

-- Jawaban Skenario 2: Promosi Jabatan Staf Logistik
-- Asumsi user 'susan_staf' sudah ada
-- GRANT INSERT ON db_gudang.logistik_pengiriman TO 'susan_staf'@'localhost';
SELECT "Jawaban Skenario 2 Selesai." as Status;

-- Jawaban Skenario 3: Kesalahan Pemberian Akses
-- REVOKE UPDATE ON db_gudang.stok_barang FROM 'budi_intern'@'localhost';
SELECT "Jawaban Skenario 3 Selesai." as Status;

FLUSH PRIVILEGES;
