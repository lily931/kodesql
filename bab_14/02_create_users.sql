-- Skrip untuk membuat pengguna-pengguna yang akan kita gunakan.
-- Jalankan sebagai admin/root.

-- Membuat pengguna untuk contoh GRANT & REVOKE
CREATE USER 'analis_junior'@'localhost' IDENTIFIED BY 'PasswordKuat123!';

-- Membuat pengguna untuk studi kasus
CREATE USER 'dina_entry'@'localhost' IDENTIFIED BY 'sandiAmanBanget456';

-- Menampilkan pesan bahwa user berhasil dibuat
SELECT "Pengguna 'analis_junior' dan 'dina_entry' berhasil dibuat." as Status;
