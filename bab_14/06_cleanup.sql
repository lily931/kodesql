-- Skrip untuk membersihkan semua yang telah dibuat (database dan pengguna).
-- Berguna agar bisa mengulang tutorial dari awal.
-- Jalankan sebagai admin/root.

-- 1. Menghapus database
DROP DATABASE IF EXISTS db_perusahaan;

-- 2. Menghapus para pengguna yang telah dibuat
DROP USER IF EXISTS 'analis_junior'@'localhost';
DROP USER IF EXISTS 'dina_entry'@'localhost';
DROP USER IF EXISTS 'budi_intern'@'localhost';
-- DROP USER IF EXISTS 'susan_staf'@'localhost'; -- (jika user ini dibuat)

SELECT "Cleanup selesai. Database dan pengguna telah dihapus." as Status;
