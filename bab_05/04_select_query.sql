-- Bab 5: SQL - DQL
-- Menampilkan NIM dan Nama Lengkap dari mahasiswa jurusan 'SI'
SELECT NIM, Nama_Lengkap
FROM MAHASISWA
WHERE Kode_Jurusan = 'SI';