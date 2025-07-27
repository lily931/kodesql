-- Contoh skrip untuk MEMBERIKAN hak akses (GRANT).
-- Jalankan sebagai admin/root.

-- Gunakan database yang relevan
USE db_perusahaan;

-- Memberikan hak akses SELECT pada tabel 'penjualan' kepada 'analis_junior'
GRANT SELECT ON db_perusahaan.penjualan TO 'analis_junior'@'localhost';

-- Memberikan hak akses untuk studi kasus 'dina_entry'
GRANT SELECT, INSERT ON db_perusahaan.penjualan TO 'dina_entry'@'localhost';

-- Memberitahu sistem untuk menerapkan perubahan hak akses
FLUSH PRIVILEGES;

SELECT "Hak akses berhasil diberikan." as Status;
