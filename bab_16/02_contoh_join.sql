-- Bab 16.1: Menguasai Operasi JOIN
-- Contoh kueri-kueri JOIN.

-- INNER JOIN: Menampilkan mahasiswa yang memiliki jurusan
SELECT m.Nama_Lengkap, j.Nama_Jurusan
FROM MAHASISWA m
INNER JOIN JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan;

-- LEFT JOIN: Menampilkan semua mahasiswa, termasuk yang jurusannya NULL
SELECT m.Nama_Lengkap, j.Nama_Jurusan
FROM MAHASISWA m
LEFT JOIN JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan;

-- RIGHT JOIN: Menampilkan semua jurusan, termasuk yang tidak memiliki mahasiswa
SELECT m.Nama_Lengkap, j.Nama_Jurusan
FROM MAHASISWA m
RIGHT JOIN JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan;

-- FULL OUTER JOIN: Menampilkan semua mahasiswa dan semua jurusan
-- Bab 16.1: Menguasai Operasi JOIN
-- Contoh kueri-kueri JOIN.

-- INNER JOIN: Menampilkan mahasiswa yang memiliki jurusan
SELECT m.Nama_Lengkap, j.Nama_Jurusan
FROM MAHASISWA m
INNER JOIN JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan;

-- LEFT JOIN: Menampilkan semua mahasiswa, termasuk yang jurusannya NULL
SELECT m.Nama_Lengkap, j.Nama_Jurusan
FROM MAHASISWA m
LEFT JOIN JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan;

-- RIGHT JOIN: Menampilkan semua jurusan, termasuk yang tidak memiliki mahasiswa
SELECT m.Nama_Lengkap, j.Nama_Jurusan
FROM MAHASISWA m
RIGHT JOIN JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan;

-- FULL OUTER JOIN: Menampilkan semua mahasiswa dan semua jurusan
-- Mengambil semua mahasiswa (termasuk yang tidak punya jurusan)
SELECT 
    m.Nama_Lengkap, 
    j.Nama_Jurusan
FROM 
    MAHASISWA m
LEFT JOIN 
    JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan

UNION

-- Mengambil semua jurusan (termasuk yang tidak punya mahasiswa)
SELECT 
    m.Nama_Lengkap, 
    j.Nama_Jurusan
FROM 
    MAHASISWA m
RIGHT JOIN 
    JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan;

-- JOIN Tiga Tabel: Menampilkan mahasiswa, jurusan, dan dosen pembimbing jurusan
SELECT
    m.Nama_Lengkap,
    j.Nama_Jurusan,
    d.Nama_Dosen AS Dosen_Pembimbing_Jurusan
FROM
    MAHASISWA m
INNER JOIN
    JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan
INNER JOIN
    DOSEN_PEMBIMBING d ON j.Kode_Jurusan = d.Kode_Jurusan_Binaan;

-- JOIN Tiga Tabel: Menampilkan mahasiswa, jurusan, dan dosen pembimbing jurusan
SELECT
    m.Nama_Lengkap,
    j.Nama_Jurusan,
    d.Nama_Dosen AS Dosen_Pembimbing_Jurusan
FROM
    MAHASISWA m
INNER JOIN
    JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan
INNER JOIN
    DOSEN_PEMBIMBING d ON j.Kode_Jurusan = d.Kode_Jurusan_Binaan;
