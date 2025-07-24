-- Bab 16.2: Subqueries (Kueri Bersarang)
-- Contoh kueri-kueri yang menggunakan subquery.

-- Subquery Skalar: Menampilkan mahasiswa dengan NIM tertinggi
SELECT Nama_Lengkap FROM MAHASISWA
WHERE NIM = (SELECT MAX(NIM) FROM MAHASISWA);

-- Subquery Multi-baris: Menampilkan mahasiswa di jurusan yang punya dosen pembimbing
SELECT Nama_Lengkap FROM MAHASISWA
WHERE Kode_Jurusan IN (SELECT Kode_Jurusan_Binaan FROM DOSEN_PEMBIMBING);

-- Subquery Berkorelasi: Menemukan mahasiswa dengan NIM tertinggi di setiap jurusan
SELECT NIM, Nama_Lengkap, Kode_Jurusan
FROM MAHASISWA m1
WHERE NIM = (
    SELECT MAX(m2.NIM)
    FROM MAHASISWA m2
    WHERE m2.Kode_Jurusan = m1.Kode_Jurusan
);