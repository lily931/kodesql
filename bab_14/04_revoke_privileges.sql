-- Contoh skrip untuk MENCABUT hak akses (REVOKE).
-- Jalankan sebagai admin/root.

-- Memberikan hak INSERT terlebih dahulu agar bisa dicabut
GRANT INSERT ON db_perusahaan.penjualan TO 'analis_junior'@'localhost';
FLUSH PRIVILEGES;
SELECT "Hak INSERT sementara diberikan untuk demo REVOKE." as Status;

-- Sekarang, cabut hak akses INSERT tersebut
REVOKE INSERT ON db_perusahaan.penjualan FROM 'analis_junior'@'localhost';
FLUSH PRIVILEGES;

SELECT "Hak akses INSERT berhasil dicabut dari 'analis_junior'." as Status;
